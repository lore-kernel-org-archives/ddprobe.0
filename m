Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487D37E9
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741315734; cv=none; b=aJpBr6aqoof4mJMXPmi9AU+7+RLkZ2D8sJC7MBlN5bvuUL7QIdrFeAp3mj+8H0xY7LJQb1Rgq6Dg0TZ9QIwmNMA5Tvisf+jr1nnngE3zyIy5giWBWxLY+bRdsgBaYQbhbnbPycfu4TdlQpRQuAyfyEur2APnHkFBHiAKa+wOxCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741315734; c=relaxed/simple;
	bh=xCxu5aAqC6Z0Uli7rY7rqQxmepr1UAl6ML2cB5j6RTk=;
	h=To:Subject:From:Message-Id:Date; b=m6h1v/Fq09+XpuLqNtBw6nBB6Ta/8LeozroOZFEnu/zGaq6Sn3fZuUgxU1/avBU9MqzpabOr6cBPIlFgooLZU/WGUCAy76A4sgg3TW5pvNPR519C/IyyXfWbi+2Sd5XxZBBqGSwUplctL7wN8VG1T3OF5SgdMEy9sSztcEfbMHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozidBGNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozidBGNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1BFC4CEE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741315733;
	bh=xCxu5aAqC6Z0Uli7rY7rqQxmepr1UAl6ML2cB5j6RTk=;
	h=To:Subject:From:Date:From;
	b=ozidBGNS4IdJiN0uxHcTNFnasN9I5AQrvMOfFzPBpcvMdThBBEjGwUwQuDSYpq6+f
	 Nlwc+wcXbRDHx4MKM6WDu5GPE6qaMHVEXvktE1k74z4DDaadA9EX6WORp03IZpWSkH
	 eJw1KuuPwGmVdcvt6IZ+dPCWoD3KvOCfAOzp8/JotE9H4GIFuZCzZAwU3UVAL2Ojqm
	 jcrgvWhSFsmTBTPWycDmsyliP6jZE8jDIv7KyD9IvEi3oCULoUtXxlr/osl+zo1+Tf
	 YoIiRoYv0oE2u5niuA2QbBMz/c9cWXJB1GT23oK23yMlCBr0yAtVnQL98G01w3XB1P
	 8FvZYPbgvX+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB1CC282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131573359.18274.14944549272808623425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa292c5a238a6d7bd605d6c1b209f9b493a2b79a8d58dd826ba5d7810dfacd90
Date: Fri, 07 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741315733
