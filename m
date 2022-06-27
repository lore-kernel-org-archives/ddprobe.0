Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4B42C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656329812;
	h=To:Subject:From:Message-Id:Date;
	bh=i+yRGod+u73KJ7bEBm/6lgb7/sEk6Evqmk1FPt7+bUA=;
	b=eeKeAsmk1JLg7u4Y09ZnFxzACGmjeWiVaWdbXzH35UPtsaolMYfsopmYJqo+Qt4U
	jlKa1k4nEKJdwe5qmFHnnj6moOqJOWqsVKZjeiZ0gZtecGFD4cXPsyXsuEJBfIOaZmV
	ZMi1aLdy1DR/roLDVRdC3NPIh8i3MNC0OKGfeoL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656329812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i+yRGod+u73KJ7bEBm/6lgb7/sEk6Evqmk1FPt7+bUA=;
	b=HfC+epSatR7hw5iJrc6MWC2po3aedLzOWZOnrszEGzXLvtOM4Yb4zJlNsHFlzVK/
	Uj8djF2yy52sLc17B1u5006g+1OaBtyH5/avy9O7VAPO76A3GYbVY94cCZmhaqSGEpf
	nZV4bgmFS6xvUkFpu6RBhxNf6s30RN1+4ZHGO3Uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4f33926-bb2d8e94-fb18-4bb7-a512-47fa633b70f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c0692ac5118fd4b38a6fd89027eb4e7a969d08917fc905b9ac5e7525b106f61
Date: Mon, 27 Jun 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656329812
