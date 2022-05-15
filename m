Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C997A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 14:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652624879;
	h=To:Subject:From:Message-Id:Date;
	bh=pO1lPzD18MVOwyNR8oZJLegdFKsnVbax3lRSOdarrJ4=;
	b=EPBJGH+JlYupjxMKXuFzcwcQwHAhzoChcONpFCdWnPkOFsLKaUot/JWdqS2+AbOe
	jxuYKnhYL2mpHJptniHWls2z0kvy/b25EuoqWBRECLpWBfRcmF5UrRztxGRYRmqlS2Q
	6OF8jGEQg8EfSw//r4Qa20mhEshHbQeqUzCxb6Y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652624879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pO1lPzD18MVOwyNR8oZJLegdFKsnVbax3lRSOdarrJ4=;
	b=JaVWetbVJeMoPJDivDPXmvykAfH69VJC/tawB4ERlfakZRIE9TpIfwGUJkPGTtKQ
	rMlATD/2Tw3uKLiTAWVHUBFxP8OKWkWJT2J0aXwR94F/yOxz8V2ax9Y8pJnYZHrBURG
	Pe6h4Yeuj1lL7wKPaFYzlhml5je2mWujIiWJBwxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c81e6ee8-2f79b541-a79f-41f3-842e-9a321c8e8f2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d78e96423f5a18262fc78fec76680ce2c76da39a3be2c82b6b1b78674e44202f
Date: Sun, 15 May 2022 14:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652624879
