Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2F81114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659780053;
	h=To:Subject:From:Message-Id:Date;
	bh=TKjkwUiHL47kKVc9kTjYScXXnCuT7Oa/vUz2WFRrHxE=;
	b=fEc31LYRiGPBy7IhvArrkNdrO03IVDCVzIz5flElzfJCvTzJn1ErTrfKf0SnwoNU
	Z0nrGdgNWCgQHv25qCiu/LEUrHXw7z2/PzM434WjF2F/CnO/ZIbgAL4cDsGJ9+UbJPv
	BsIuntqU86T/M0GWQy9WFzUZbjC1kloNdbRwrGtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659780053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TKjkwUiHL47kKVc9kTjYScXXnCuT7Oa/vUz2WFRrHxE=;
	b=TRhaSYusrHDnZhwD7qWQNSYaFeXySpLZ7Nxc5P6D0kKS0GoSIv9r8YQSSJStlNkG
	/QtcNdY0CtoGLgoKl1x0kIusVAlv6WiU0Ua/lu/pTM0pQz0qjNlKMW62elt5kn9knuK
	DxsMykJpt7lea8M8CR45inHqcFFah3ErDHJj+sVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827299b64c-acc5d063-722b-45eb-b109-50c65b091a7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ef32b97e8414421f95b6cc161cce8e0fcdab032f4eaf94871adbf2fb0c44548
Date: Sat, 6 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659780052
