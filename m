Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0426AD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658518012;
	h=To:Subject:From:Message-Id:Date;
	bh=I2k0p3sovgeJxZ+Uicb3ZDqsiFIqH9hm9HhJS3CvqQ4=;
	b=O0pEmmO6+y2CAo9kt+iQWmHEZa6d09UeJzyD+CxhfhkfJgGhjci1F1CTMpiRJ6Pq
	fzyJ0kAUIgvQ714+bY2e1w0FMG7rbPOjXE0Q4KDUtLJoqVlvXfDcGatdyY5amoRNK+q
	HXifx4GltHfLgPTIma6JOl//vN+qcDYZhhnW0W+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658518012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I2k0p3sovgeJxZ+Uicb3ZDqsiFIqH9hm9HhJS3CvqQ4=;
	b=O/BwQxRKZZdCTF8EFXvnkhZyfgwSnVcqur68cKhkY62J3mNS+9PVG98Oc1ZaKOy7
	Y2bRPHdkTCSl6FYsFZymI73oMuIEcEmQ9MDI1RIJGyOgfKzVIV8O/pc4l6TV2BPipfg
	n183Xiah3J02TVGMKeluA8w72j6kx5TSDsfLFSNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822760817b-266d49e3-f010-4d6b-8724-d163b2b74f73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 405cb7e53aa55f306142105826b1245b1a4d73650f8f3b406831220729792b37
Date: Fri, 22 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658518012
