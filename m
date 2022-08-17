Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8391E7463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660769452;
	h=To:Subject:From:Message-Id:Date;
	bh=xsU3TF2su6cCLI6oVaS+YMJ0YeVEhBOuWPUv0eF91eM=;
	b=GmfNDwc6Ybty7CBNR833xxuR4aTZy31G98+G5UAQ420RrZzu2KIFSuxQ8HX5KXMS
	KB4ZOy3CjpIpRS1Ls5fEfIF9uTp42hkVFspe/YQVDdy6XBrZenyqVJlg0bcfeaPDjwu
	/5SiaJXjeSuzs9bcsnK/dPgqiT28iw+uBylqOQoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660769452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xsU3TF2su6cCLI6oVaS+YMJ0YeVEhBOuWPUv0eF91eM=;
	b=JG3mHHqkRtuA9E8cFq7gC4Ubk7iBF7wIsgDTgqtV+X89OVnmwPUkebrpVRNCHQT4
	EI9PBntemF+S+y4LOCELLprD3U78hznpFYFbmWLgtMll2nGEahzX4LeR4iiBEjjCFFY
	HxXV6HGb2/N/fRN1RzkAbqSYsAknBh+7pUl99epw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad92c29f-ef1b0ec2-387f-43a3-b2fd-432efbffff81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 542853a8956e763f2e2444f74376aa8750d8149be8deea77fcc87d811793a975
Date: Wed, 17 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660769452
