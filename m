Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28B77A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 07:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650354598;
	h=To:Subject:From:Message-Id:Date;
	bh=usTb9YniMEcSYOjHBYXGdVHBexOD79ImHkNq9Wcu5ts=;
	b=RIWryavA2lu1GjY0SYHCoULJr1F8pAuwWvEbnqoC3H/cdxcMohN1CDGuGrdPbGEY
	lMllYO+NXoCmuC8naDopZQQd1hqgqOHe44Rvv2JUEuj+Uy30BkB5gAXbaFL8Zj+l3f6
	Ksav8oszf4JerfJTlMU7ySQiE/e77P8tfEeDWua4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650354598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=usTb9YniMEcSYOjHBYXGdVHBexOD79ImHkNq9Wcu5ts=;
	b=V4jzPun8ejXQONeVq2XswyvyniPcNVHM6l9E561KBYcOmJyYomIdXWOFimaP0q5c
	gpMSlv6G3EmCh95TUuJYzr8PxSsGaay1DQa2kAf+RGpXrNvzb7nqTbPIVj6KMfHz4e4
	U6LfuKzIdMUduVRpQpqywmOJDVQWxVjjqMnH+ZNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040ccb14a-3dd609fd-908d-4f5f-aafe-efae2b385273-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec7f6b3e3786b44a6eeaff1685aa2182e0b21294c1f0f866c51e6ebc5f57a57d
Date: Tue, 19 Apr 2022 07:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650354598
