Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EBFEA6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 15:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649604118;
	h=To:Subject:From:Message-Id:Date;
	bh=+tyjAqMw9ucadHP4LtyqeJGrNwy1/08As9xdxi6aR54=;
	b=QNsXhq3Pq3or+zDyDuveoHtSQ65kIeSPjlD6nG4o1i0Rgl8wezwxIPHhtsc8DXJp
	RP7MMboh/voaMghIv4o0kr6RpQCFCEFKM0ghR+qaOLO75jermjN/uHw5+Y8KjNE+mJt
	Cq+u1eVfSbJ0r0iw19TN3r1jA0SkQ6l2Zy782ZF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649604118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tyjAqMw9ucadHP4LtyqeJGrNwy1/08As9xdxi6aR54=;
	b=Pky7nU8JT+uX7PXgPRB8i45sktSYVS4WDB3fAZ8PCg3GlT8CV0OzhXyTQ9Vxwu+m
	pogEPjl5xu8sCr7XBVuzOFSPIqW5+wDx0bQBHPKc3LFVQ+RBW2O2AdkoUcLxSmc+6Rt
	PosC9tAe1qV4GtEer6TDuarSBgTljMWHd3Mul3wQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801411473b-7bbef7de-2710-4065-815d-6e72879a606c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acab55e931c7f6e48b082df78b6b20c56af8606d4e41984dd954b35cac281365
Date: Sun, 10 Apr 2022 15:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649604118
