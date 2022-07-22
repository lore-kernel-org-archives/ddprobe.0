Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E986E4432
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658489212;
	h=To:Subject:From:Message-Id:Date;
	bh=aolO2zVyV5yRc3pQHj/Z8g8Y0N/prXO/Nmdn6txDoQA=;
	b=eOItiJvbs9jpZxlwQ0mInYNTjZG0LSaGI6Xr+cAZSw+05KDDwqIk5OOwLh637LB1
	7imfm2miTdwtX4huwrAk8Fwo12o2H0VMzGe0zDhb7nBrRqSp7hgvhZz0AaP2loG6hNe
	6FvBRUdoQIPFW/nGVDxWKldSFYCLHajS5Vf7SKKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658489212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aolO2zVyV5yRc3pQHj/Z8g8Y0N/prXO/Nmdn6txDoQA=;
	b=SL/msgonsNMLEEp4rR+L64Fu9ZV4Qp/0V1+4v9c+4+dxroFYH682GEtaBuS4oZbb
	4H8BisMzNGeUU+YT5PXzlzwK+1ZGhrdDMhRmefMJPGmrPMXCcYiUUPqNz/0qzRp0H5n
	rZpM1Klr13Dq4szZWOKYPCdfse8Ja4GXIKuF0EnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225a90d87-3a35f2b4-27a7-43b2-8f5f-0c4fac50ceae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a3b49e71e078e11967c736daa04032a174b737a1d2b959722f25c07f6a95324
Date: Fri, 22 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658489212
