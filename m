Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353337C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 16:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653238139;
	h=To:Subject:From:Message-Id:Date;
	bh=V/kEQFKoRHKZ42fvS6ZQ7T3uqnSzzMvRirym+OU4ODU=;
	b=CIj1PmHGgYu0poNDTSC+zEVmLpS24xAwjHuRSVJy+2mMV6V9uZV9Y4B7/JdXkhbG
	tIs3YGSHOfOVXamMLv4LQswhcdVKcHc9qIOCwW/s14FkUTCHU+d4MMPGL2IVX2guEGi
	L0DVum9UJvrY47L90QiHWA2Ylfmaidl3ks1TQvT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653238139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V/kEQFKoRHKZ42fvS6ZQ7T3uqnSzzMvRirym+OU4ODU=;
	b=X0W14HypFJQLSUbZh9lyPK8kWa/A7uJc7nP/uXRCwW019BdA9kicSL8x7ZpIInKc
	XFdC+k1V/AgX7tFIB0C/f311UkP1rUR+tFONwfvlEyEaP3wheIxayGAuZLwtWK3gKB5
	Ux4NFqpu7N4Vf93JOYGMvrfUqQqNcRWfIo6UvjDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ecac0991-e9105e42-6284-46c5-8fcf-48aa2683d49e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7931804942af0577f75102d2cd0f78c147ff4e989001cf45dd523b8ce3445e1c
Date: Sun, 22 May 2022 16:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653238139
