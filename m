Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD25027722
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F40C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667427654;
	bh=FEmdzvP1CmDfEgrmQF/Yqvu76wz6qdPWrm+USF5Nzo8=;
	h=To:Subject:From:Date:From;
	b=ERJWhjOt0mUlezBakeul9dtFLUiK7EbqF5pir/zxvj/d1+wrEtNDLMRfiq1sbl6MN
	 sm66Ozb5U2XrPCDeTZtL8DG9BxxqL2KcuwYXg7/eC43CP8PDRSz/T+9CY0+ETqEHJ9
	 IENQCxa6L7Nt9SgmZTDO90BshmMi56jBqNcusccYnullq1B2+8dvihOvFpWNGbxNam
	 b7Z2u5+Nh02U17NtnwBNHUnrTkATuMF+ADr+7CTmQssmARySmsOGSnHqS/Z35ArhNK
	 HKUV7qoVK1h6Aza/5nF9DuqnHovClCXxh0ImwZsvg9r0SgMV+Hwr8QwAW27N9Ax0U1
	 ZKmhirlQW/gbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC0FC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166742765436.28337.1807106293833522291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddba8d3226f4ddb86bb911d902cf25366d419ac918f41aebe225a7f4ea19066
Date: Wed, 02 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667427654
