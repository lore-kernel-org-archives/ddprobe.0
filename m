Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC5920E3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 03:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654745699;
	h=To:Subject:From:Message-Id:Date;
	bh=CKiOdTK/g0DA1l2D+ObYcAvd62N/3N5bbaspHa/BMYU=;
	b=jEYpbDMQMbW8tIYesLL9/lK4Qno3oJdJPiGOZCgoKDhhvtuqibHm+Ma6uDrL1fFD
	ANlRO8VtQCG5aoRavpRL/5eK6/zIWg2nkMu3DmQS+pOzfyBP6Rruubj67kQ9AKYMzPs
	u8s2HD9liZL+byF3IXL7Qfj/faI3WHfE464AKyro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654745699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CKiOdTK/g0DA1l2D+ObYcAvd62N/3N5bbaspHa/BMYU=;
	b=K2tho4lBpEDPnYrcVNlYvQWSAxMIOVQD6/Sb2oVrFjp7wJUb+AVsBHCrsP0aXspr
	Aq7fT1V+rvHZviMYAa+lNGWip6FnXp2aRL2d8zZ3/gHFlMXAd1ppv5LyBapUN2qEv1X
	416RxSc3usTjhpgvMxlhTgMdkDRxQ8a0xKd14nl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181468793a1-0f273e0d-4f3d-48c8-b9e9-1f21f44d68fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b5d8b3a94cea9f26b8345c50007ef1bc3fb5a357ed151490b9ecd6a4c121e2d
Date: Thu, 9 Jun 2022 03:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654745699
