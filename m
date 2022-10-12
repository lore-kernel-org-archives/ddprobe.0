Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9C528E7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92565C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665591653;
	bh=X3yXliBOTwgQA7enXxcL9B5VaKsq714ldZc1JXp3reE=;
	h=To:Subject:From:Date:From;
	b=B4OYArjVna4aDSfA3UolOPV3jtU9MoiKwqc+34BtZAerIuMKT6BqgoyEk41adf80f
	 wB0t0vRe58IIS7wfqLtt27soqqQbJ+Zjc+nGdQ/s4ebySfNJ6aVvNfeNpSSDMURVgl
	 /KOmeCB1Vv4mMy06OfRTBTAlbrFCVxwjLBpb4nR7C1hS93aLWWIV5FDQMDy+joBbHN
	 pQo+9Ya0C/5lBgd2qp++osKgjrN93y4Ogt9FJ4pX6/FpJ95SvIsgf1lIruwSYRZ3Bs
	 w30po6y26VJ0ais1aUTd1pE1psKqFkPt1y1FlVFmuelbakizwP3Trx8bb4VkCjASQA
	 U0x195e6rmQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D668C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559165343.5171.16662367766006329492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59dc1aeb672e95086a92a0444ef83d5049b46d2d4828a39c0c9dc9be496c077e
Date: Wed, 12 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665591653
