Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DAC10E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7858DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665928253;
	bh=ah22a81zBZ1d0RFkb/bZTGC36dyLizOWwgS1TbwvgZg=;
	h=To:Subject:From:Date:From;
	b=lyCMHG86xXyyvKYL9q8ml23c5wfAtYOI/qIyT1Cr/bSmtEHIuCPYekZxrG5eZpe/3
	 N/MZ19n9d7CxFMyRCuP+Ielms9d4tW6blBNTAY0X3KREFutSUJ3ZWoXSG+NmFfgrxE
	 AZver+RDoNkGq9/q50jE3Hc11m1O5L1baFLsClyRtsiN69JX4NBg2qH3RSXGv/VhYL
	 PmXeyKShvPNBHwRdBIPAX5Dhe4gl0Ozv8UHzDDgq1pDanTyidY9s1KOGvBHxrgVd6H
	 4fGPhBVHPYn2yf4WXNsS1JZQsuaMNIHydkLmX2oXCK/4Kd/fzInMs03c1qt8C25u60
	 Ts2u/9V4JZlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E50C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592825333.27145.6901472174498065178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fcfb81bb09a0822d581da8d3b5722df777040f8eeef57e0ee811c77afca26e2
Date: Sun, 16 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665928253
