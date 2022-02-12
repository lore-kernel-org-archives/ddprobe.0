Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06D27A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644669058;
	h=To:Subject:From:Message-Id:Date;
	bh=woehXHB+7oDc+yUjdNtG6mHcru6/Ts5kuhzsQkbcagQ=;
	b=ka4hPKCcdbHZsFDrS8Hxw5hbrvG9MYmOvFw09PRYSDhD+H8Qei9izjfwn8tUQAy9
	JP2Q8MNQ4e94pH7gQdukai2UxvG9iSSwRfCfTsU97rNCrJ3zyFG6TARaLQknBlXufdX
	+p1T3NU8BLnXEd5LChezPPsfvfGddMegsj+18jUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644669058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=woehXHB+7oDc+yUjdNtG6mHcru6/Ts5kuhzsQkbcagQ=;
	b=eBSFxcHcxqmdosfQFUArD7z9W4ZLpZs3vx0LpkgyRAbFrP+OakQSa9QO2NJyjinN
	2DglpSoILdk/o1PSp8Cg/sDZkeknGgkuJbiZZsU7nU/XZqGMDh2exkJ5VSjByXkyjJ2
	0BepIP1sWewy3dVVccasaOXe6TQbmefjamgVXHH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eedea3bfa-c8c5a052-d4c8-4be4-95f7-66cdb3ae5796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa80d966549b7fe1b02edaddf10780b10fe325e68dacb5bd3e9ffe5c1267923b
Date: Sat, 12 Feb 2022 12:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644669057
