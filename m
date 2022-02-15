Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E75E116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644904584;
	h=To:Subject:From:Message-Id:Date;
	bh=cRelwJb2C5QhPNMNLs6oitgdrzsT8hp5K7EmnRlLOys=;
	b=Ngahb85qEtc2ZCpDDArjW2Nz+Cm0PzbHbXZSWkZp3APRhlmWYFt4xiVolZt3wIHJ
	bpGpp/9uutKVOkVSNUG6uOMavJPu1ckvG49Xk4SGe/nMO0LHOcagu+LC1u3T84R7r4i
	AElZdn6dsW0uQSnjO6I7tPwoegzfEync/L7dwn80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644904584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cRelwJb2C5QhPNMNLs6oitgdrzsT8hp5K7EmnRlLOys=;
	b=aCU4zb3YGNAq0ibR0HsUSBXKnxzgZtF233ivDhAr95q8goH1bycVDLe+JxLOaK8u
	FREvv1IImOIYE2yrRzKSMDDzpdcrxvnkkCuEDJpSyGhK3tLbDfbwePaumTyl8R3Vz8S
	R0JWrcmSLjPDdud1OULnn4bHRHXOXINnS1PDQYks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbf41608-ec65ed16-3334-485a-811b-c23f9caee9d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84994826d714c6f1b9a97f812bcb5254746e9e8e13d1891c62720c4032b5b880
Date: Tue, 15 Feb 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644904584
