Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBAA7A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645989385;
	h=To:Subject:From:Message-Id:Date;
	bh=IH/NFi+ojC9B6EGIcFoisV0nC0my/sbQb7SjnQOn+CA=;
	b=m3L19NVMXyT2uI9Di2rBmNRKolhMZoMvt3y1mAEPVzg2Y0pIh6d3AxSCsQ715Fua
	m7Aah65isCKJpcaC/28o5pVb5ZhVHMltvrYOEeIDuj9rMIufup5PloP8j8L2zWXLvfr
	VTPbfEL4QUaMkAr9uj0IsccKK1kc3aF1iJJBL1og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645989385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IH/NFi+ojC9B6EGIcFoisV0nC0my/sbQb7SjnQOn+CA=;
	b=a+O6HayBAr0S97dw3PoLidkH6SkgfMRq7ixWZEvYvZPvDg+PyRDTfIGmcRmWBZ2W
	FkG7sSdjymV65RDLakYE5JKO+d1u8s9cWD4l1CA0iVLDiK5G4iHToCkNn4dm2KYQsgq
	R/teIYOafbANjWNMOy92XaIlPIrWQJF6yhmgyyu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c9cd23c-7c6da87d-7943-4076-8371-7f26b9a1cc8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c09a7cb816a496e4c7d894a9ca738d4a3c77c6b9bfcc79063f79f37dc00da778
Date: Sun, 27 Feb 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645989384
