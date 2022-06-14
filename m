Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3043C23AA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 21:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655241779;
	h=To:Subject:From:Message-Id:Date;
	bh=YfdQKm8Fsop9ZUpnnHvrtp0rdsfBx9dmi4c7uyI0U14=;
	b=Ugqcwdeqzb+6opiGmPHLXxfHzb4jCkTTB2dj5kIF87AgItDsorVZzlppcion+qHo
	H5Chxwj8Z7HlKJIEJ8yr2sfkj7tpr0HGWNdNsG34Wkh/omM+7tzV8cw4MIqQjc6iawW
	RqM0ghTADkThnrRWBn4C3ceBaC8P0Z5tUZEdH4Z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655241779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YfdQKm8Fsop9ZUpnnHvrtp0rdsfBx9dmi4c7uyI0U14=;
	b=dndAdHAn6Kf94Ev2nR7uOCOThOkmFUR7wRxAWnROmKAd7YMugSyvyrpo34vty2Rl
	TZvkWBr1IuU2hYLcxiIAW2HGhhI2wfdQNcQdDRiZJw9SoizJVyr7AvnQzpkrjJUDxxF
	zhEPOkr5/G4fadNci50bWxF2IEdDpvq3wrWivQWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164192859-8303ba6e-ecf4-46b4-a344-261f13acb67b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40be5ad55cd24720a39264ec98ff5f8d48e09d2eef5a85037c2bb6807e4b812d
Date: Tue, 14 Jun 2022 21:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655241779
