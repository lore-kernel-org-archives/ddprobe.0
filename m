Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344B119B
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 04:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651640218;
	h=To:Subject:From:Message-Id:Date;
	bh=uRvA7J2m/cvagVcDMhcy2jYNTdosQ879QQRyuMvo5hM=;
	b=P3MtQaAMRlM6psMpzUisB0g1AEHpdlgfgBpHhNcdgVO29DbLJDmYxyzmFor7TckP
	4djky3wPJEIutGFFnjVfshXouJk2sW+HdMi95rAxUhPlL0lqyM2PtYYjWCDzLHiPtsB
	v3VNkiPW1JDkAL1NzD2NEitJ9GJNX6GJI/jne1Vk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651640218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uRvA7J2m/cvagVcDMhcy2jYNTdosQ879QQRyuMvo5hM=;
	b=Ra/v4MKbUr0li1gjMNWST4skJKzjsdCnZg90l9kh8OysyWo1FUcMbgf66kiPmWu7
	TA9+DYgv/1pw47Ud2js6tsnZpWeGQyIHgUWsbUFY47D1PX3Pb7KDC5KmcrJUwnMC1Gv
	omBTAGaBxPcmRpKZRe0n1QoHVbeP84sxGcCKB5AI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808d6db297-feb24c1b-51fe-40d2-b216-8cad05b3dbec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbff8f01c985d7ad93a345f3fdd651833be79dcc576969963945de3e0b2723a2
Date: Wed, 4 May 2022 04:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651640218
