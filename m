Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFBB1FCF
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659911452;
	h=To:Subject:From:Message-Id:Date;
	bh=h0OYOzFkL+egW3ewuckl7TINx/sK3iu7CrVRrvc11DE=;
	b=Fmnoe/8BYLbydJMA54NTAWRjS8azwuZeiL+EdTkAUREIf/SzL1t2OqiSNQmMHcfc
	6ZlDjLP8kvEKAU7A56Rx8DAI+sXVwemrMhU3tPax4XCGPz0nF9cjArf9eEO1bumE9KX
	wQftv9arex/7lK16ez9PYKyFeyYK2ygzpo2nET7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659911452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h0OYOzFkL+egW3ewuckl7TINx/sK3iu7CrVRrvc11DE=;
	b=j8Czq8EudHlpDkJdIp7eGsH15xYz1gAnNmmf58qbPDWAmbSft7hjmSaY+76qiObA
	8YqYDdhlEuAOwG5YzF/ugA5QTCsDz0YIUFvxyu4E6TYhq4pSEn5VF9M/tQ0NBMreSVS
	qZ1KTAgF7zwQlGnImkCP4BH8u+7L4xmbTueSjK5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a6eb7b4-c217573a-4750-4f4c-aeea-67cbaaf4da17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef01243f3011e633d1a20f3c5b23246ce4053c7ca6297db9533d4fd33704735b
Date: Sun, 7 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659911452
