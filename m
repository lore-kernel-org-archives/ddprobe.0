Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76D22102
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776BBC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670429454;
	bh=tzqTSYJT9ALcCHsiidMwGXTxcHtqhvYq+ztYbUwne/w=;
	h=To:Subject:From:Date:From;
	b=Aup651yiDCnvq9kk2/5+kcUgmPbKwrTh47Jb1eEDfV+cnqzTV4r3XLWx7QFufvfz7
	 4rK7IXTbwyGIpmzvFEekdBYtrAVccNGM2ATSJOOeNgSiqVmYCa6Q55BnN8cqcKLR/G
	 6RBmQeSMo1HyKmfyi/BHC50lFX5IeOWgmcppZcweoJYEQeAR0zg2kAV59CpAFxUaAC
	 UX+viAjHeqstDX8WaLPRhZysR/hlYy2ph2PZqX3y+oQjF5CKhiQmQE33H58nTJEWUp
	 oseG/P1Bs66Oh/LhKCHEuIc3J4p4xJ3UL9dABozkUib6058PFOYCL4cD04YrckVNZ3
	 O3E1r15D4NENw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5968AC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042945435.26186.5739353472841638749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02321ef1d092aad8ac4f7c2ee205a6f23394964f02c438b52408115566b51fef
Date: Wed, 07 Dec 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670429454
