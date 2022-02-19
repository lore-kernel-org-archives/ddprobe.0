Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C0A5583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645306885;
	h=To:Subject:From:Message-Id:Date;
	bh=qRRT0YQd7AvZOha5fMQbd1iwB+njmGenH6YFJ1CrZvc=;
	b=Z0njTLAZiU2EJMGD9FyX1iavUPdDkxsC1SU58jn0F3Hk3oHh/eIeP+2+35NtCvn5
	+P4vo2L6stRnxlJaXiGzCA9yA8ofnxEfI76Jb8rdPyUwyjPg/SSVLsbLmx/l50k8WNI
	hkrA7KtNM5i/hWVP2I++nLphhBha7NXgH7mMdI2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645306885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qRRT0YQd7AvZOha5fMQbd1iwB+njmGenH6YFJ1CrZvc=;
	b=eDk9ruxkfHw09d6pgPvxWC+OxMY43b6l9KcRN+6eaZnYK7RJZIjUfuVwck+wiyuS
	dCZnH4HJM+isdRhY65Pjf0ZgFc8BecRAYJcgzMsfGORNNB/+iHFmnqgGCdEX2QcBM2V
	EOrN1M5khToMusup0QUc/MQDqxWw93ex0kHnMFdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13eeb2cd-b27af638-85e4-47ef-8b17-c357f51e0627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb7dc8daa2d12c65bc26801f1b79ead88ba5094b7985901bd9f0fecf5582e6cb
Date: Sat, 19 Feb 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645306884
