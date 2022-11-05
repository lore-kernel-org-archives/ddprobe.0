Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CB610F2
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705AFC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667644254;
	bh=ms6SBlvdt+XSa3SYYBDnwR6VluWeul7QjaapCLheKvs=;
	h=To:Subject:From:Date:From;
	b=dLGDELlJlY2WbcmpBLoWDTKy/bCTeFHGkTshpINjcfKYCG7KkCVOM2RbNf92WE6Gf
	 Zh6ddABKPOTByceUdG8ALNIiwXJIuUl4Zwpee9b80rv4ch5g8Xr4FZug4ClRaD8riR
	 5TgGFaNBVF11baJzdo+G5bpa5vd1xv/YYeA74M3l8AQOxmCCiaI0xxKtGlrg5Edjml
	 aU4uRFJNdzHERTr6pEe/hjbfHGExt3ANKppv+ScRDTdVoljPQad/NsBlKtdL21ZUXI
	 d+qGeAKoFmNoDHjaAFNg51pWJr/vlzomG8S095Q4ds7ZwS82Vfhzic6+EM3aBZHYiK
	 ATXgLiqwBmjnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558ADC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764425433.6998.7289420468700565639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f6bc6525e1604b4c3b952c4dfe97bb83924a17b38f46e389f64f8af57ceec9
Date: Sat, 05 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667644254
