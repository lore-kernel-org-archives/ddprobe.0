Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903112F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647078984;
	h=To:Subject:From:Message-Id:Date;
	bh=B0yDlUAiez+sJg4MiaS96jcJ93+5+GG4pRQ02Gub2Ss=;
	b=lToGmn0j4ElxtQv8Hqwyy64xlCUJr2zPksfFfkmPqI/WjTuatrERriYfaEIrcqLU
	jiCTu3lqckxickQEZfSBZqBBE8OIyY5/jLSLsGbheAxoUiwj1Am114/mdquh50XTeBi
	Ul5H4Qw7FsCaSF9cp64a9/8yE2Nc5klEDoXot/sU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647078984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B0yDlUAiez+sJg4MiaS96jcJ93+5+GG4pRQ02Gub2Ss=;
	b=CDTRU0R0owcTK8rnvhhHQhciLUhJkfst8nLEvejg6LO1/+HyOlLBSUsKw5/jRwRm
	L1NaHAM6lEPw3+giVuRXTgTOUihh6HvaOu3STApsA7SLTl8OWjkTxYzrkTqANijPjIt
	pJNIE8kyjR+qwTwzDefnGCwOFf5LzjoOQGzNE4dQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d8ecc1f-c3d579c0-bf9e-4c4c-9ee5-ad53ec8171c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c1a73732acf51eee5b9a1ee488da442c4cdd8b782320c2d8972f68b8eeb43df
Date: Sat, 12 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647078984
