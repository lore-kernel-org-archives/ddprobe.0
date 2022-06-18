Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057497B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 19:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655582039;
	h=To:Subject:From:Message-Id:Date;
	bh=D5luwhXD6+FLRnarShbMdL3kHJthLeNKJ2M7gWnSPMs=;
	b=e9EQLseESjREn5enhlOJwxbjCpfjDIm2xqR3SfI+2u6iCgyslIKNslLfk5IIftl/
	oCSUR8pUUpsmPzoyWF+wS0BOHV4Pwso66DBD8Ep+pgEJYRVKgpY20w85Yb2oA2h30PB
	ag5OBasPPs418CA25JNCCszU/IHN0trHjJrkq/Ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655582039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5luwhXD6+FLRnarShbMdL3kHJthLeNKJ2M7gWnSPMs=;
	b=a61qN9gG3X5D38Dci7Nsw2RUtTipeHA9EFGURrSf98AotEPFbbRrjHJsiO3q3ClS
	f/ncgABg88I1AvoOKAYthDLt9HrHzDcrUslfACbniSh2uADYxTWUv3CUciF9RQv1QlA
	PxVuDPRGMeQkzVd1hsg1VIFoOyVYFTNNAqeGn89A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178611cac-da7134f7-df89-438c-8914-5e619294855c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12d807c2eb21bb4d8b6f8e6b285af36222a59ecdfc0f2796fd26b04ff5e6e45e
Date: Sat, 18 Jun 2022 19:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655582038
