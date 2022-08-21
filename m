Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86DD46AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661123453;
	h=To:Subject:From:Message-Id:Date;
	bh=3UokDdUDLD58npY+pa+rnuudumyTEqQRJyadlOvKNV0=;
	b=EVGR2Lpi6rEQ8M2XdMXDvzNMzv3wwKwidZJkArkWsCtgB7Ok/+hMSA1DPspZSfn8
	Z3S202Cbj+mfpFJ1oPzckZ1z7q1t4YPNP7CgOWz1YAvNx0110wLsK89V2xYPe4XbmYJ
	/+BxP7nlnaPwsJxDv4r8PcomblibaTo2W1Kv3JcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661123453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3UokDdUDLD58npY+pa+rnuudumyTEqQRJyadlOvKNV0=;
	b=REZiJVl7usRsJ8Rr0l35Zt21jA8nx3NaWjlRuo54PVnIKgSz7wgzD3ea1XMyhzXr
	VdHJVcgWTDuCbVdiG0xeKHVlFUv5knYQRsZ3esmdzvJELxC9OTTb470ooa2s5dlwadV
	Et2imyiozmwumfpTFIhc+0O32u4BgnFpSkkCkdrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2ac5e73-199161ef-5910-4be8-af34-bca81e2f58d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8eee7005d65b93b731e6dc3341166ac48c3ee29340d7ab96f3a9b7f3dcbc37af
Date: Sun, 21 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661123452
