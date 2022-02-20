Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD055CA1
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645356684;
	h=To:Subject:From:Message-Id:Date;
	bh=4XNTk+igY1ymvnvGLA5BaCB6Wwh/09uHIWrtZ9//yY0=;
	b=dbVkY+KoBFamvV8Y2jbgP/b3rUHWF81dg25s7Vx4oRKSTfX0QjIjmx4SYFPpVDid
	tzVYcFCMQlaMXrB9K1lJyhesiaqHUB2bf2xPPQCgyvAfHfh2XLQXbAQs1NIg04yJizD
	+9qR0A5xyayQ/vtSoLGcfOShgZ3SRTmd0Cla5F14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645356684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4XNTk+igY1ymvnvGLA5BaCB6Wwh/09uHIWrtZ9//yY0=;
	b=ZDUl6cXgBq55TET/LHaEMqBrerQOVll31xcNH+2nN0kBB6OP14tuGPKfseAO9+X8
	OYXBKutWmAMvKECpziTGiL9SE+cHstXiV1CLoSXiVW7TvDtFjA7wD0KZkR09tQvOmBX
	8zxtig0zBNg8UrYgOfqvLHsaEUWUX3MgJw3clxUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16e695de-ad1f9eac-970e-4ad1-a099-48e5b20dfb9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee4078d305720f639360c134ffcee6008cd804380f4c2c8a164ad7372d565532
Date: Sun, 20 Feb 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645356684
