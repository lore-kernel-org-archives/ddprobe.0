Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321CF366
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657967812;
	h=To:Subject:From:Message-Id:Date;
	bh=7zsdz5K1SfvvM6jopxFy9ZOknJ3i/d8oxIEQk69t0lU=;
	b=bzJlerrq1ayepgmHl08bf2l7+GkZCYLN2Ph7xV/i7YnjGNPuAjaKJdRVgBQGuy0h
	YcrMzQiROvzu9TegXcf1LDvU5c7J0gcayDLn2FGNMtZqpYsRQQrm3H0lTuDUhBiV5eB
	XfBJubJL2S5GOdE/2LkMM2xMEdi88VOlsC/DbrmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657967812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7zsdz5K1SfvvM6jopxFy9ZOknJ3i/d8oxIEQk69t0lU=;
	b=eZmqQHceVlk2MBfncUb17vEA2MrWO0QhVn9ZdL8VIfTadNE66/s9qulMJ+uCBih+
	p+rhVLLj8+LPhI2KtFT8NvHD5yojsf0W5bneffDevMYtjNdYVCMxxWFInK/TqbPKKqT
	Lnxpv3MIKCjOQ5I/vxwNCNOJd9hHGU2jNnVfpMqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206951f11-73b32f3f-a182-41ee-909c-73ad70bec605-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e69c42f7c6a2611281b46c80226223bb0dbcf1c4cad7adeb96be41cce4e855a
Date: Sat, 16 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657967812
