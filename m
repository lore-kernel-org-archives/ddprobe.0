Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FAD110C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660653652;
	h=To:Subject:From:Message-Id:Date;
	bh=bVHB2dvkahhjVnqVTdO4PPuc/Oy5F79SL1uPGyzYAB0=;
	b=d4DKd/9W0NupZ7rnBVQpth4dkF2/+Oq2gcYwcn3ZYhPLk4lYcoY38VX9/mJub6w1
	ZOThcHLPHY3uBYdjmGHu6uq6rkoWFuSDngAY5ZNHWHnd/UnxPir2E7rmoERoZK8s7ft
	IIw2iN0HFI2triAtUR37pEgshtOwTkK99jOVasFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660653652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bVHB2dvkahhjVnqVTdO4PPuc/Oy5F79SL1uPGyzYAB0=;
	b=I4ZYpi/rhdidAFHu7nfK2OTPCA76e2urE352oyK2DJzm5yLsFK2O2xPWPG6BNP4H
	Vpa310e2iY2lcQspPOn16/04ZcjKGGDLCuhQgljbH9pz0acKOxHQTtJBAh/qKX1wNQt
	rtw8XYHbbLYoUsCtzTqBu2WFyiE0bQ34I45j+YgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6abca97-01dd7759-a5aa-49d9-bc19-97591914bf27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba7a4ef690a927afd923294c02dc1dbc12053dbe62b0cad8d806ff5171c5a720
Date: Tue, 16 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660653652
