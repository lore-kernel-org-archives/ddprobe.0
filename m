Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F3D811
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 13:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651843318;
	h=To:Subject:From:Message-Id:Date;
	bh=XmvYn5/2IduY9IebpllWKgJyy/eolvH/1aG+F5DzaQA=;
	b=PWQS5e4/afM1vDNNam2RVdjxCRgeJZlgv0c3U40pD5yRbjj0Lb5igyU8DRoEqepA
	CRtZgpYWjWnLQW2rm9KccQpAS4SN7o5tTNs6hshQlXcGLhLxfxKnDwqouLjA9uVk9hO
	6gAnZiDzmA4PDw9P6+3dKCF4NaBuPOdMpwBPQHUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651843318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XmvYn5/2IduY9IebpllWKgJyy/eolvH/1aG+F5DzaQA=;
	b=afbv/zanv8xocpOf1rEKorbIyCDLwh16MPw/uVmDmUCPfTidln9/Yj7MNWMkE9cC
	aEM6yxc9fmYa2kitj6lZkxG9ETW4s093+pPR/ZaAMJ1cvKG4igiSq8Hl4wMKmkdCUxI
	e6bpV5K+AUFibO6v4lrTI7XFHpu9H1XrFkqHB0TI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809988c20c-231bde09-6149-451f-98c4-59e3dcf1bd6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ab0c4184b76e703946b892a6379c01eb1c2347db4e6cb750d9fc4c329e36bd7
Date: Fri, 6 May 2022 13:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651843318
