Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1F81875
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 19:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655926679;
	h=To:Subject:From:Message-Id:Date;
	bh=Eq1XacvnJ1O2cfR7A4lZK6iyh1HkYvoh8rM0VzifNkY=;
	b=Eq+uMB06R4l74/Ov4KxUSBedJlM8mpkUHKuvZNvt7sV4qvU2FDPSaymTzdU293is
	HXroCSs9wF5UjBF7LqRToIGr+z0VQ6OigsjDO0PjSTynxnBf7ro+9uOybpsdHSAEjJE
	ZiG9HXQSmZpoR08S0Wzqx+9TmbE8W0X05mVZxqpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655926679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eq1XacvnJ1O2cfR7A4lZK6iyh1HkYvoh8rM0VzifNkY=;
	b=aKVAVOGmitbQP/lgf8vrqPFAppfUbSHXNvk94PFPPMVqGKP+Ar+RdgTmBiR+xX/f
	hE1Vk36yEW1THjloqWVUbCFV+UX79duK01BQVPhgn2O/EMkMcZX5GzXK+JzAxJEY2+P
	DzV8JWfGy0M41KG2JlsD1v1BpZYUgOpX+gUOUrH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818cebe727-23652cc3-a1f0-4ae2-8b65-d3952e7895a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8be6bb64d4d51cf215031b610c0dd5668d5695a8918ffebccbf18d327ef4e164
Date: Wed, 22 Jun 2022 19:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655926679
