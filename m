Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D2215B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E08FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663899053;
	bh=E3LEMoiPE57RZ0OZNLT/24Zhjdf897drzXUReTCFt0Y=;
	h=To:Subject:From:Date:From;
	b=G9DFIvV8V0cidl4v3xbH0x020dLAPmFfLH4tUbiA8BVSgf8BSlChKS3yVVwpZ3RvI
	 5UiPzqqixPvDoC69t6hTCHNFyfen9wrf9cJPsjwJHsjdUOkSrDRnBNh0mJUWR6s9nD
	 Dl6XtdEnnTJB4aSRiFF3RTId1G/WxOi3Ic8VB2e3/fRQryU1orFBANouOX41jnLpEr
	 PhMrCOPT9JpTGCXCsFesJp5vPbnk9Ao0VsyhubwmrYNBDeZdjX9Xv9QvuDZCCBgwdd
	 ro3VW8xh2OoXRZRfcB8l8PBG0mt1iyhciCrmX9Wk+pH6Th5OPmjLAVNTzcpHV5rxRn
	 DEGdtgNQTGPBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5000FC54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389905332.30549.791555153567837396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0324b59ce2e1a6df89c48545cbfcaaab93cdfd57ac63bbf8b2b9f4307dfa04
Date: Fri, 23 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663899053
