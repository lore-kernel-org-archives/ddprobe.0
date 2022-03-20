Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAEA533F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647792685;
	h=To:Subject:From:Message-Id:Date;
	bh=AMOc3uXm1maJxAVlMEfOrgzX/xFvVZNl8tedu7eicw0=;
	b=kjBAL2PprS11vF40DpQvQhpkb0AJDzL63Hlh9+aOraY82oEdcwZmLmlfFys0bB0d
	doD1EL2pV+eLpzsoSzV9nrvAEdaLHj4C3S7RnlddnIYir2NNA/9Hq5DaET/niCd2YsL
	iBXx+AF+zI+SmrtkmE4YOw+Va21L6s/IA/Y67Go4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647792685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AMOc3uXm1maJxAVlMEfOrgzX/xFvVZNl8tedu7eicw0=;
	b=gMtBVROpEuWx0HxbGSxqOrW/h8/KcDuuBoJ0H/5vJzs/b+zgZ07jiJ88KH+Uh6i8
	GhZbmEDHRFXjYTVBGdqCCUqiCzx920LjegJqFOqochYu0+d+FS93Lf3bxzQ4AN0Q6bJ
	JhsEmlYJtqSAl2BRYvgV9zfNj1kqmW3f5VB9dgYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa818febc-01f7e9bb-cdb7-4fc7-95bb-e07f2ed75938-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b54079ff9b8e1ff284e6330c7d13b7cc7a51b1087bdb912250b906725f08fa8
Date: Sun, 20 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647792684
