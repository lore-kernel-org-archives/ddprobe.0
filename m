Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E800111AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738496754; cv=none; b=tFkEO+0t03sccWpOzI1GH3PMzKUNMPWyfooVTuRf7SnjQhDKvRkJ7DNlfBrBnRuTwdWqjttcY1j3r/AwJrSTq552AqBD8ZoCgpPZRpa1l0rsE+nLnEFeZl1O9I20YUrBp+2s5Le56rKJYaIVbXY5pU1C2t5tShq2upCnk+njPCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738496754; c=relaxed/simple;
	bh=kK1qa0qIeORJjuPJlwcIv/PJ03yaormgbSQQFOHwhSQ=;
	h=To:Subject:From:Message-Id:Date; b=JVcQpRcwl3fMk91gim4jknCOzDNj7EX7TVJH77T3PUTJ/mBJ2Xv5p/FsDY+/eR7Uhd2mOoq4BfK+Mn8ehF/s53J1B3htD/t0Niz/dK5oBYg01qHOjyBK0fXyCOO0mM+hludUCw0smpuATEp0EahgjSs8QKUf8wbzZ0F9miAIvhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZLnuXRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZLnuXRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB4BC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738496753;
	bh=kK1qa0qIeORJjuPJlwcIv/PJ03yaormgbSQQFOHwhSQ=;
	h=To:Subject:From:Date:From;
	b=iZLnuXRtzBU+Yg3kA4JLnjSp90DRYdKQkGKd5QzNQHZcqC+J1GdAK7P+KX7j8nLzi
	 Z2mQ0+xyUTjTKCAuRvxPCrLBpqTD687yMOnHhLlD7dZnaW/TvAbSJZngkGn3xgZMxF
	 Y4b6n1VAbeCyK6uYrnf0p/mG/6RWDs4nRUgyhGNb85/872yTWGInphXmKN8NbOa8rg
	 tP4AiHna5IqFGOIhkH8iazbzTWoz3k1wCp4+XNqx0cVGVEM4LuGd1djzHP9wB6a1G5
	 sbjep2CvXPo/QRQ8BvGFegeQdTeWbf5DsZmkxGFcMNKU52MQAlBUCxlSncaz/TmJpE
	 7pgAu3AHWdRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A32EC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849675359.12230.4861390856960159437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57e80856e893084861d976968d3d9835fe57d0b53d64c6c96b75faebf603377
Date: Sun, 02 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738496753
