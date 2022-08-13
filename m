Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED7C362
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660369252;
	h=To:Subject:From:Message-Id:Date;
	bh=r12/CnT04lXWmJcdCSpg/uR19R5oGX6Js4538m4BeAU=;
	b=iAdNA3tuDrpAzJ0F7fT9uZS3I70tHJCZ8/uG6akBFtpdh4+Z0nb1WYh5PHmDLxMd
	K5jJM8gK71fk+eH6y29HlNU10z4K3LT5EBcjt5d9wSdZ72xQnsHdrt5floyHI5vWPEz
	la92Ho2vfr8LwXaSocyhEFcO/uZamsBPnYEI90O8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660369252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r12/CnT04lXWmJcdCSpg/uR19R5oGX6Js4538m4BeAU=;
	b=T+Gfva3zhs5CMD7j/2DYUMYdzT6aNmN3u+0pDSarkSnR1Bub8Ma/KSvetfnaKJwi
	6ANwojvWrTpJN6NwBE+mvrRpiQN+qbLPTKDCjizKqa6ICdfaSeJpQZysUDha6ZeX+PK
	CITaKb7wDIW72WSNIIkGN0i9u14SStCFdntIMpHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295b830fa-5172396a-af1d-426f-a415-48d89bc52b0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9bc033c51322b49ff72f29ee2270f5acb6ae5553897c944c6abdd3bb5c83d4b
Date: Sat, 13 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660369252
