Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B581FC8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656041212;
	h=To:Subject:From:Message-Id:Date;
	bh=eTvzAAuUaB3OD0O6uUWSGBODJtF6kG73u8DfwiS2AWQ=;
	b=hLp4MkXQVD7aFj+uxhTH9NDGrSJ3Xoev7AP7SuBLfMTFLeBHtrsV5JN9jSD77fhb
	L3Qbe7vQr1hH+82F6AvnGeKUhRlByU5eLlIW/NMvvnIPPsZ1niya+5BFaRKipQlFgA4
	MFc/BCO4yJrFa2vgJJ5J7Jo5n4PKVpxRBSTOG5Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656041212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eTvzAAuUaB3OD0O6uUWSGBODJtF6kG73u8DfwiS2AWQ=;
	b=aJNujVhYi85iDp5NaStkc+FNxSqRv/Xp7/8DrM5y7L6AUgbejiFj8QTKGpuhWnEd
	hRAc2l4dhFzLVMJy2r6JjGtVn1xEXylVMyMKh1le0v/97uPXwgppY7za0gXSHB8Wq7Q
	Fsaxq/vqY3czLyQBEMPONXsPy10oYap+7m5eIQpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193bf8973-67a252d5-3887-4163-bb34-8b56fbc67251-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0373f01847cf17d075980c412d94f1ed412b5c52f5625338031b7747e522f3d4
Date: Fri, 24 Jun 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656041212
