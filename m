Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A983A7481
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645742485;
	h=To:Subject:From:Message-Id:Date;
	bh=GhLYQT+cv9YDn3j/vDHrQqmfNjo9WGegl2wJ4H2Y58M=;
	b=AMmVKhR4W7q/5uQYIRRil/RxAlkzvLw4XATHut9vGHoMcd/0feGhqryJ3mFaPna7
	3Cj+OcIdRiJMxFh3VqE1T1aiwhdASJSh0nIZEiJwS2ViJqrXY0cwr9lmQq5GQXT0SAg
	FPGWKtgIZknD9GL6SaVz7VmhRYCU409UdRFCQ/Ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645742485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GhLYQT+cv9YDn3j/vDHrQqmfNjo9WGegl2wJ4H2Y58M=;
	b=OktkOCrlWzaXTREzsC3/9kXVvxAYe3/FLbP7lNatwpsbesbS0HL1+Sl8P074HrYi
	1rfO9U+yWvRA1G2Ps32/0JARLN4vLVwOBGcA9Fd40xjPeNKjMz2NB5rRU18jfEvWlKy
	eeBQzsw1azMLpiEV+VU9aD25y+wjNfa8P63hUK2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2de56d93-a4ee7d91-fb12-4619-a56d-72d7c6d99200-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7ada2c63276754abadab1c56aa3c73e37d457a78ad8fa3eb128d68078c062f2
Date: Thu, 24 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645742484
