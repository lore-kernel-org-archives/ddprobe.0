Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C82753B8
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660760453;
	h=To:Subject:From:Message-Id:Date;
	bh=1Dq8bstwJCIjCMFVXWc9BJ10a73MbDbtmRZ9bmfmWVQ=;
	b=VlbOvrdSIKA+NgEdkCstYc6dW/t1WFXXfp/FtScoXsgqfsA8EP+SCrxHp/C1Bxc4
	5LD0aeYMrqMUg269GW3LZcH8YqdWv/zxz9Y+FmOq8uGnrKdeRHCtkfiPv1DqVOq7nLx
	1w2yuptXiTubtOdCiZ2RlKZIKo3nGzs53zshM7FE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660760453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Dq8bstwJCIjCMFVXWc9BJ10a73MbDbtmRZ9bmfmWVQ=;
	b=GWlA2+bAXMMBO00uQ6rkVnXFX5pTAPzUQP2N+9tb9wB41leaY/yTrMsVCCVs5bwU
	aPQYKv64baqEyw/idGbuL1qZpfRoqiqNPsOe4k6T3IoEYZYX7qTOL/aTaIRYnUVJFh8
	nTutoingtbUVlIjBlv3lbzSBuHx1fH6yS71x5Yls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad096e64-f81a5d13-ed77-4455-a488-e339b80a9757-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e446edba1db686356486997804fb4aa5af2e5a1be682541cd1d2810086584996
Date: Wed, 17 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660760452
