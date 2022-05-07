Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C15136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 21:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651960258;
	h=To:Subject:From:Message-Id:Date;
	bh=Vr1XdhTInu+zsxEf9ibiWWvrO9YgIvQHbRWFsYY+LfI=;
	b=SunzpG5/GFyCg8MNIYkkDtmoragMmXEB+OilVZCiS8aEKg/QKsKvCofexOWtQ+UI
	igueZ1LUIDQrlIqfM9SPo+0hnzZtAR4FTuvlSx43ZYRQTcRnkjLuLwYgj5/GnBOV31j
	FboSaRZZnOSgp1c+hSg0XZaj9LGFIkjuJFtdl7CQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651960258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vr1XdhTInu+zsxEf9ibiWWvrO9YgIvQHbRWFsYY+LfI=;
	b=QSMkjRkZ93UuMu5FrOKa0QyJwwoBqiMrrDhLMhrfw+wa+k3qnHmAVR531b2F7neB
	OtjL0Hic2URoS/oIQBx1af+sOh1Fwepo2TTf1GOfqubwQXJWaF2kq+IBXILgxM8/8FR
	aAAnvX3qfum3gZxFijo0kf9vDjOjQs3VEDaxbbr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0811ee9-ddec3f95-01ef-4ce8-ba33-110e3d9096d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 258f62177f29c88f292d0e7ffd1cb92122922506d9df22aa538c0c6abe6fb3c0
Date: Sat, 7 May 2022 21:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651960258
