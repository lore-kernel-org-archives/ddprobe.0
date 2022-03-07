Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A741FB7
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646620884;
	h=To:Subject:From:Message-Id:Date;
	bh=sem6JhMliKuGArcjqsTxCcLfSmAy/t2DbyrC0ijdzmw=;
	b=mIuDvNL2dBwTjXQf3FcvV3UPKUTsExeDWQT1NogY8UTZb82SGrs9fNGn0tKdyHwV
	EM88bXfNIC0xFrL657T5WXxnQzRlhVZIlTs1AkGZ2KigP9bB58xPSUwIe1bF1BQmxmj
	ESG+AEBGFjQgg/sXx/MBI6HmVSVBCIliLTjq8Y6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646620884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sem6JhMliKuGArcjqsTxCcLfSmAy/t2DbyrC0ijdzmw=;
	b=hoMV8ou8+lhG4VdC9nN0abbHri80pH+QxSb3frCr5zdDyHCNxBCt7f8BBbC32Amr
	0Izp+ITGxB2GDNu6QdXuzR6euiIrgYAu/FyLLCW8W0t2+OMKTvcNC53DXp+hux97PW1
	KK8WYajRTWu2Rz4nN+nOzc0cpMkz+rLZMjr4XmQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6240bf04-acd21a76-36bc-4595-a646-e7c0c20809fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22479d5f8665a10d4f35540db32bfe68a35991483b96009e53aad4c1b9a64e91
Date: Mon, 7 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646620884
