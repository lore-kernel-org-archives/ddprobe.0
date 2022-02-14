Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1F0627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 01:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644802809;
	h=To:Subject:From:Message-Id:Date;
	bh=nR9Ju4fnzxLZqKeEVjFSBgQx2sgbiOkaqJ5xmDZyObU=;
	b=ahkquaJkg79kvli35CdCun9GkzgsSufvYcMmgCoS5WG8S+qNOFBusGtp95fYL0Ik
	apkInzLSTsEF1cv94GX3bb7v6jKsrjZjAGGXYNamEVp4G7208tAYYkAcTbKSBOsubkc
	WJYNx60b0lcAzwtf69qjCiSk71cXcUU3wpXEFI1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644802809;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nR9Ju4fnzxLZqKeEVjFSBgQx2sgbiOkaqJ5xmDZyObU=;
	b=K9xPMQ2QxE0O22LeRNuY/WtqdiHA4n9Qz5scn9myQ+wmWPV1Z2xLe7NQRGg2ncUz
	9lvngdWaUioDoKKVdP5+ght2Fb0ZV0lrbcbdPpbStf+1GfmeSh50eIafpXhFfpG+t0M
	FR0JDdxPL1TacIDg9UhYB6O4kiC77mGNDkm7b9Ao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5e31d98-b61af8da-4b82-4b66-867b-ae5e4a77b2d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e32193371a5a1c710cc829f4817b5ab9e7a0272773e6a4e3262fa9386ea5296
Date: Mon, 14 Feb 2022 01:40:09 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644802808
