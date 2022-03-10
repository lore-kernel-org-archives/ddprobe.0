Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE3D7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646908884;
	h=To:Subject:From:Message-Id:Date;
	bh=/265MjSSVe4iINANLS74E4cJH4pRKXR/gFvN7t3OS/8=;
	b=RNOcsplTOAHhnCfHIk8+OndMqhnAs6h8bwEPFzd0+ml9cLkCjgPOgkaH6fRzao0T
	Ll+M09uvCaRHpUcnjfrE/Mdt6oTCs/CRRkHZkAS1b+epLOTWyHk6ZO6RYaIDfqy0HGK
	rUrguCom68uoHRmo1eXnoy2KPJLRO8SZaN8X64mY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646908884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/265MjSSVe4iINANLS74E4cJH4pRKXR/gFvN7t3OS/8=;
	b=IKCwUXIWZSkxfvvWMMb+JNFRYdAOgCwTBp0l0/K/cYWqZWK0KnwoVRxcgGFHMu9s
	Qof8t4Oi7+n5YgI+rOk/1x6/6XUNw/uxJqghOFOU3oSaI3F95EQnulIwfgpS6C1jCJc
	fC6deQl9kiMu+rYq+ilChzI/7ks4cONUFTXOACzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f736b4736-8d225e1c-2b70-4eb4-87c1-195a477f44cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bb6283dc2159588c2327e32a517273bce16582ac2b298518817c8a3a8a30b1b
Date: Thu, 10 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646908884
