Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B72EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659751852;
	h=To:Subject:From:Message-Id:Date;
	bh=02Vjir2TGgnutmdo3lRi5x9PmwxaGzunU4kKCuyWtuE=;
	b=MZOI+VYt+JCKcZV44acUdoenWnSA4Mixc3ZYjtJ/jC5SJxraLEvYzZn1ysTvybm7
	gW4yxMrwNjzf8LMYXsvEnx0LiNH8IERx53plsEgem/IGUtg9cU2BF6/cYo9Mz5i7fcs
	vCq4PATb5rhQqxpM5zsqP33svpXK8lYbgB6Y0V1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659751852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=02Vjir2TGgnutmdo3lRi5x9PmwxaGzunU4kKCuyWtuE=;
	b=DD3PR/tFTdR7hkXTAHXtz6C/Lk8wHB6IbJRhbpk2sXpu4P3DKazalFmjFvg39zT5
	bbrxAOqdvLgBnkd5Icx4Mvj/+mpWIBy4N7tA9/M5Nn5Tg/NhqTUaQuxWRte4kCyt4a1
	YgTkLfieLDrb1ulNCx/IXXnFvqZvywLFobvGRcT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270eb6a19-b1f11060-1b37-4e75-977e-4f0d573cdd3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35c073dc0021d5ffbfe2091e3c5c0730a9cd1c993884c05d4458600f8f4ac985
Date: Sat, 6 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659751852
