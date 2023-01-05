Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8882EB0F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82175C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672941687;
	bh=oTGdhRYHNHPRuqI/dhl6if+FPTE2mR72VEfZYtcMj3A=;
	h=To:Subject:From:Date:From;
	b=GM9DIrDId7S0j4jXluid7BrC4xetRjuou+ld5KKTLBeNywz+9KJ/mWHqZ+fEVNeDQ
	 YptNP+NYu6YcPz902weQ0lOR2H/s0Jwlv4acYG/Kfc5q2XBGnMOKvAR0+fHLi7z8hc
	 +J91GY9pFIKitGYGT8QFXwiM6wve7GO5e5WFdjQKUang1VbZtYis552I6Z/F1oxuzs
	 HVL+65M6cpf1kYBAsc2VJieyg8Xh5BTOZ6p8OI3BaJrQuJib+NsEbiH6BpnRWhR5/f
	 xqcNth6oblTOQNwUKW2zlWehwSTGeh6Ubvic5LDf9XT3GQ0M6yd+OHM8ONg+7Ywje2
	 QaFjVy8E3kueA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68611C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294168741.24664.3342930545035808905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6d4914169c106b53dd6d27613925b1a20190cd1b5add2bf0c382bde961ec06
Date: Thu, 05 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672941687
