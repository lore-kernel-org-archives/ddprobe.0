Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754BD437C
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645124184;
	h=To:Subject:From:Message-Id:Date;
	bh=PxVpP1h/wCBtAjV02YJi2sQiQwsGIu0lbZVoEu7qq8k=;
	b=Mt3QYVaYJCtbqjj523CkpJaLR/aFLpW5OOx+innWLn7npTvL91VD48dzezs+6x1A
	NWvKB9QkySEBHACNG92qdhNd1pQP5tscFyGxBFEEmbV57Zr4kkAh1ZSpuWQHJI6XJSn
	zW+BEwlotxIGDtxmpzgF11/xcM4aMF2wge0lOdRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645124184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PxVpP1h/wCBtAjV02YJi2sQiQwsGIu0lbZVoEu7qq8k=;
	b=SeuZXp903bHB8ZnRkO03GWIVIPxHIWWXUxtvi13dpvZUhJb6Hy6lkNkDmPCU7wbX
	CZ/44xEL5hZ3TsqaHtXaf5ENWOJqSJDLi+Zo19yNliTdqCw5I/1ZY9SnIBJZRUM61Vw
	m7bb5ZUQ8EkSyz3DuSWBI9DwJMEYLqvIVGW9EpVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f090aeab2-a163401f-b187-460f-a8b6-35b5b5ba140b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29933bf69e6d346d95729396c58ab361cf6211bc4f66e482c13e1f8b680c8cab
Date: Thu, 17 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645124184
