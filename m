Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013D76465
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647986784;
	h=To:Subject:From:Message-Id:Date;
	bh=BXAffbqaxRg6Ek0x8FgdR4DqLsY4vYFAMCxeywZ9R98=;
	b=hUi2cOsRGhn5cNwkwA97H0bGQagZyIf7KC3HUk2EZhBEL5U51N2jNSvzWFpJI3EE
	CANGRtgMSS3dzYbTeDDb5+X5DPBwtIaWO2d5yHKLz2nvJYAgtTeHjBqEzmRIXQsBbZb
	Kia2gRYXKB0QH8t/+d1quQrys3WRvo7KWXrikty8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647986784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BXAffbqaxRg6Ek0x8FgdR4DqLsY4vYFAMCxeywZ9R98=;
	b=DcT7YnGybtqB6NKwmQGXXpj3G8pA73dqFBfQrigJH4luhmaT3D+j0cbmKaHyfP/N
	xJ2quHh4NXmaZJ5cmiuvlNUYFbtTELIKBn6FlzusCwKKjenewTEL4LnSQfxAbYVvYnr
	M0qcDNQ5swMV60P5MiDDSY67ja26/1pML6fGQouM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3aab9da-e61979fa-30ab-4ccb-9fd7-91a597a778c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e93e9af6390d3d0072088d89f4258e68a90386971a6559144ffbb7f9a5846a2
Date: Tue, 22 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647986784
