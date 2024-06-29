Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A24132101
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719684863; cv=none; b=kTJGAh5D1OeJJXH48J3zB1bLJx+3mDDMt7sqJ8knTj//BjdM5ou6XdfGUP8iRq/B+y3oqz6Kyeo9C7mXk/kj27Wi/pl+5yJVTc8+O2T/luKLh5TWh/bis2w3dI5GywovXWMZHkeFX44og9/DOa08pwiLczMEsQAgmfRJ9+/Sd0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719684863; c=relaxed/simple;
	bh=w+0U7yClFb+UjgKDpQSF0pgjR1Ar4e5GFQKS1/aGbsA=;
	h=To:Subject:From:Message-Id:Date; b=ezJVa6DNDGzRE75dulgbQ4tZ2b2ygb4gJsjSgpupyxq95x0Dr6UtF9I7Ew2iiMbYfWb9F0FfNch7dmY8ii5OEXk5jSosb0xsYPiZWS4O8D9dlBUXL24d74SYCf/fYxSHvRreSb9pYy5sztsKeuJrLgmbsFwF1dzkajox5fXnDR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj2FCoWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj2FCoWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6ABAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719684862;
	bh=w+0U7yClFb+UjgKDpQSF0pgjR1Ar4e5GFQKS1/aGbsA=;
	h=To:Subject:From:Date:From;
	b=oj2FCoWbQCWL83Rye+lCGczQkK+bhJMprc82LuqXhXsZiIPYcfxmCPPwFEbDY/fKT
	 T2lF9po1fYoC7+5RxTCcauKSJ5Rt57z7a6CP9RKGPeU1asKKX5LyBFGdK+Avk+rIGc
	 QJ5Y5RUJzEV1RQq7Z5TfLKq9woTgvlO/IpQLk2j0UzTyjzf087lFBa48JAoEwJJczw
	 ClFZjen//l1litVuHZOCZYR49+/M4qK2YFbZ/P1Hq1BKKXVpzcee/UigdCS6vHPifS
	 NhdZukQDRxXJN9pEHVhXSnRbUm4jcZ0GEkDKCpwuF8YA9l2Y+X87B2yMqCNEj1vbpU
	 tKPKog7hAB90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC386C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968486280.6326.15984702536801157099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c356342915d7af76f3ce303e2e96f7f71bd0aa04852694888f4b70beaaa128
Date: Sat, 29 Jun 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719684862
