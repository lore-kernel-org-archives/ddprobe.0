Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2267C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645007484;
	h=To:Subject:From:Message-Id:Date;
	bh=BII55n+HENI50iTfovBNsBZz4EuW3dm9HJedGGGmgLA=;
	b=F56QZd36kbAXBPszzeGv31UoT9NdcGDmKPKPWCADDaLvA2vsCkPMYCuaVbGONib9
	ErviA8K2sBL1sYHF7BDwrUjTkWbBedap14Wkqsm1sLab6Jfs0cBO7fKMC08aF+EWG4d
	h7AiDMOTx7SAeaETyEPXnz7EjCHsPPICBA2q58Fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645007484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BII55n+HENI50iTfovBNsBZz4EuW3dm9HJedGGGmgLA=;
	b=Mhqf67S9UGbhnHUTtK4Lu3xuRdyLxKQVwbsrT1/Fg2KyCMwhWAb4N+WFOpYN19Xc
	4i586b4ql0GurAi7Fu3Lp29auiS+HLzF7m8yTbNzLaLYNiCd/seJiOSwxwUodKhcMSQ
	tzvt4xmYMIJRKRvDqJ+kqL7f4vU5KdaYBJ6XEnOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02163743-511f504e-d199-4ebe-a5f2-9562103a3379-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b93c0dea94f9ed51c7b8a54d78f261d1494df5e9ed3070b3a935ba70bd34516
Date: Wed, 16 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645007484
