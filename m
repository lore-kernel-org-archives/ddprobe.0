Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF80258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647039385;
	h=To:Subject:From:Message-Id:Date;
	bh=SdUzeE1CIfRs9bz9en0THnEKbuyJDfZxHuuJe1r4I4k=;
	b=W1leWysbfNwevmBld7+fFRisoL+AGlF+7F/LTEUcj/Qyn+mlB1NYmpvyYmnHgm9N
	viERIopDs+1RznQidWLMIlsAZwedqTE3ixTFgm+rIDDcG9AGHmFyLmxw8SIY/mLjIwL
	Lh2dGPD8J87iWLNQpU8sforKdhv+PBuAqnpOVrWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647039385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SdUzeE1CIfRs9bz9en0THnEKbuyJDfZxHuuJe1r4I4k=;
	b=P9JObsdEKPT5BhjPo1RvOmbmJKyBJf76H/eD/q1zv7OZ5a5E8aqEhYY1x9wPWe+n
	jxzUYH9JcDpUPQYFiWJ1D2qsK1M1urOlPcexk+cdFs9wUkyVeVhm3D07pStSwDDUjcB
	zv2SF2QtXij+YBe2Bbra9FFn3RB2IPcR/t3kvnIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b328cb3-e0e03bd1-9a87-406b-9875-2b04422d22cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11c73c8287561916212582f0e73329b09eae2d081a8dabad50e9b72b3a4b9188
Date: Fri, 11 Mar 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647039384
