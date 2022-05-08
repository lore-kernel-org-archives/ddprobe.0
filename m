Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5701841
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 14:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652019178;
	h=To:Subject:From:Message-Id:Date;
	bh=lPu1A1Uwzj74MSDqt/1OSVQMRPyUE7RJJAhFNPggphQ=;
	b=KOLEl5RatsHzMBj04wv/tqxMQ3iOZkQ2UxAxupvx9uwQ/pMQ/aHrmV1rfLEDjdkM
	1RVx0vdSXny3vZNsq64Ct0pUhXqDYvp85DiQTEATey7ekq6SA8kB/aw/LolWjVr9yJ9
	9J5NY5GEv/e1rB1IWbKZtN6MpmQOK4iNO+iC/HCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652019178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPu1A1Uwzj74MSDqt/1OSVQMRPyUE7RJJAhFNPggphQ=;
	b=D29CVUNnS0zgGcEhQnb/8U3r+4K2GvO56qn1Xy+N2m+ksPob6uttPCtBJlj0lyL3
	jnp9yrLwmD/dGPwT2sywUuGiiDsV4bG+PRiQ9S7+Ena8q8BF2sxFZDtwVADS80ta1rK
	37bkyU5InVgZQ6UiNc6EPFKUI6GO5Qw3T0fElQvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a4042b13-3f7e79f4-2889-4314-ab4e-5c5ec9e20e18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5eb86dd20132a79fb76e117219af665c24928599fe6b2ad107ff4a77d4b62d91
Date: Sun, 8 May 2022 14:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652019178
