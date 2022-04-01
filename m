Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0945E7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 23:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648855678;
	h=To:Subject:From:Message-Id:Date;
	bh=kyi6cFGhMovJr01Jd9x5uNZKPhidqX8rr502PChPydk=;
	b=GlSxkb9FdIJj2ViDHBBQrKfbbaev4nfD912Rm1f6klPsmVajttWlK4fWeM0PODm2
	wdC/n8j//J5slzFouVVJVcp766/yKbmNk4SXZPPUyALATTSf33h1n+ipyA+ntumTCk1
	aHA2J54SPdjVW5lh2LoJ9easbKBAVjZ0A+xizzhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648855678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyi6cFGhMovJr01Jd9x5uNZKPhidqX8rr502PChPydk=;
	b=b0e/gviTjKwKjOM9gkbSEUhvHaVFMTce7cV0Rq7TlIACquXkDAWHyz3JabVat3Lp
	chXVXl8PW+m5hmz0TEYnfJv7wqMWPYt2yuU/JhtQKXa/NwfgOG+coldOaE92yFPs42D
	SbQeKwhUne4tt8K2/Q+apAH/A8NYgAaL/I1bNhB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe774fd4b-9a46cba6-4f2f-4dc0-8ca1-d101948b72d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a442c22c67f14d345def27625a60cc1761c811d80b2968a54aee9d2f0be89bce
Date: Fri, 1 Apr 2022 23:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648855678
