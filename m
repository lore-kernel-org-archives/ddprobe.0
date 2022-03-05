Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB957A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646500885;
	h=To:Subject:From:Message-Id:Date;
	bh=v7GMqe24joGbBF32RYFYTjooTXF3+iHLnZ8NgJr7rjM=;
	b=Ou4rLsClk9YxIEsc3SZmGDKdtHO58LWSaAyWEy4KiucmkZDJSdFzJ7FC49IKP3YO
	f3+BQ7GBGDFO0LhLeR2hWqyz/v3RrXjZi0h0wFDOhUyvg0ROPXdr+gmj2sKSjmB8KPJ
	JY/c8skHeLD8VrGE13NqytIUfYSkRuM7TGyQup2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646500885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v7GMqe24joGbBF32RYFYTjooTXF3+iHLnZ8NgJr7rjM=;
	b=IZbGsdbYuz6mm7qZ6UMM1RSRtlGfcDmTvnyee1UrH1vYNZG2QSftHPKCdJKnX7Fp
	yRVHLPSAEFvS1OXI6BKoP2kH7c3f1S4kfogBxFydS1JrNCokuRV1rwlvaWNqJgWlHrz
	G2gSnW/efbQPHLDy9OzmnuCvny0x8/MFYua2Yzi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b19b19f-42eb315d-ee4c-4d48-87e3-4982ea430f8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af699cbba2a7e0c61e11b1414aa161153bc82c18895a661d0bbfc330cedda396
Date: Sat, 5 Mar 2022 17:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646500884
