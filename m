Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60342610C
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660984252;
	h=To:Subject:From:Message-Id:Date;
	bh=iuYjcCzDnceRLKixSEF2T6/xEXLGBGkhVRSV9v/BQQU=;
	b=hw7AP7IHYWLRF1Jdth8+G6WeVppLs0GYK+hVbxl7RUs0tLhFcax5smaH03Bd6JFe
	RumOLwlARN1qiJ+8GSIaTw+iAt6LdmyKqD13czTZSBBNOwkv9OBSs2aVLojpyQVkokZ
	sNwb9BK9VRldyNxPqN/x1kb0IlYQnZlWKuYdfsuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660984252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iuYjcCzDnceRLKixSEF2T6/xEXLGBGkhVRSV9v/BQQU=;
	b=fRmt56j/4+dt8sR+gfFFeP3eLbRKPIrWnL6wa4jM1ex6eHArPoqDa+rFAOHSkqFO
	gMd3FmV5Nqs9QIiKQGfSwXuBMZ5FiZv1fF+f74kdo0d2SaVDFe64/B1x3TNcADGAgc2
	bd4SkRSXkvh3pa7lL3uMjRfOW9mENgXNhfQKd46Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba605885-029e7d86-421e-4a60-801d-c0c285edf176-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2225841abf2517cad56795ff061ae09aa599e412ca8fc79ede41c3e22b203fc1
Date: Sat, 20 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660984252
