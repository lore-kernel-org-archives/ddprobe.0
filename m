Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DF028ED
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645015884;
	h=To:Subject:From:Message-Id:Date;
	bh=YOTsv3PYgdhMF3UJyVVYaK4eCcq+uP1pY7IPw4siND8=;
	b=VGiwPcZ9hzvies5ECdrxRE4k6mbqm+B+n2iSkvRACQJ/oQiS8xFxx2zRLL1paJi3
	/SCuz3+sIHNm+Oq+1OYfKmtH6OdNpVU6mAECEcTsOc+7EGEnvxZ+EKnFxdxZPhKNJsS
	j7M07/OCG6uuW0wnVnZV4uATbm/8ZVs79n1Djbjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645015884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YOTsv3PYgdhMF3UJyVVYaK4eCcq+uP1pY7IPw4siND8=;
	b=Qj8ddP5DZ3L0PQn2wFdsFdqm/jTLhkh1vi29nFdvBEHYoG2utN3ZcW6WvTAChbt4
	Tk59t4eYsz4ZgPoD+aLjCyVXEqOon1DAWncRTNVmsmEY4Zbd3SEEMLiApf2keQlU08M
	Nz19/1eooeU/JWU/VstsksVviQG0BnW0L87Lytcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f029663aa-f51e84b7-7baa-4a36-8b3d-380c914a1467-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 827a6017fa4faab93fae28c11b5c5fc8323817f9d64f9b0ea4e2ad334ba13137
Date: Wed, 16 Feb 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645015884
