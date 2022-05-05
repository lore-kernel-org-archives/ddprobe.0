Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FED363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 07:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651734718;
	h=To:Subject:From:Message-Id:Date;
	bh=TOGNGO504kMB5XMEfogjqWVsz5vxAADVabaSZW9NaCw=;
	b=BTmppZ6TEMYUNfnXoRi356nY8ul26bqsEUlXJa0XeRuu1nJki54IiXgojiS1fE/G
	YYiSvS0qhoCO2rdg3wMTTI+gRCqo9eZ0xlfeItnRRSWr7fsQ8ArPRVYm2xcRUbpvR5X
	2ieoeLA/uRGWgsq6p+NPyVJF0AIM4l6i0kZxdHn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651734718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TOGNGO504kMB5XMEfogjqWVsz5vxAADVabaSZW9NaCw=;
	b=TXJkzt3afZ1iqNqQOECMIakhJ5H5wG+zeMMH950tchpmZziO7PjZsg2ud78hVWc9
	9R8ewSw/9aB5UMTMZa2hYsatozn8tfrPZkv5gJqstJnJsvbKPf0Gtx0glRwUGLuxE7E
	uzc/EtWzdj5bzqBCqvKBm3aX+1SfG/IcpLuoy6EM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180930fa74f-d5734430-2b67-4bab-965d-df4f26856f66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 379967c01859db192a2b2d4d309c04c8b93787130f6474c594a713ed696564e2
Date: Thu, 5 May 2022 07:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651734718
