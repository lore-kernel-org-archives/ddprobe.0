Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E6257A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658079412;
	h=To:Subject:From:Message-Id:Date;
	bh=HoIsIGGnVfHH6Ah/xDxjedo8t2jb31bImZfXq7CBIpI=;
	b=LfgitwAYnyjk0KWyHa7sDwbaVANdNfpz0YS/8ceWv7LqXvGcY/Ofg1Asuq3X80RR
	Ni8coNxh0Qkngihu4izx8mZTqMGpa1WkVLQ3T+s3Fwtvl/DMcmj2ICFnQ5rRnNw3VQO
	gtrymyfZKE6FOgAdCXk4EpO+kRNy/q/ba18Sfl0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658079412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HoIsIGGnVfHH6Ah/xDxjedo8t2jb31bImZfXq7CBIpI=;
	b=Vwjc15ugAxqq2ABOCp1Mrl4+yCrHZTUt36qiflPuIXGltRcXTNbHf4yLUDHkzt6s
	gNTokzn/no7cPAQ0iwO3LjPZASn/UNHjUaDTp2BwXFL+B2fOJTdbbrF4nFmIp0IZmQf
	QUHRiEGv6DIS2Oza5y4LjcEiWLaRMhPUEcInSDww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820d3c0041-0b59251d-b58c-46e8-89ac-ac557a65e82e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7026624e401c0a640e528d1c531ff79d861ce73b846532bc8b46baedb944bbc
Date: Sun, 17 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658079412
