Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70151A51
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 10:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D959AC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692441848;
	bh=bLXUi6KYetVR1rTxySX77tkS1tij9ShXro52m0Vb9Kk=;
	h=To:Subject:From:Date:From;
	b=fTzbCNBM8SokAQcKqdfxXIpo/fmwIjV3RzCgD0p4VKpMRPlmtZmGG0deW8LLr+zbx
	 Q6akPgQrIzbiCoNp4DluQqQi1Nw9VIyzaGsU31T3RHLZW4jcUjTHJoCcbkLZtBTFDG
	 L+OUndlXlQYKpfQf+N2PMEoPrxXex8oJH1fLH1aPRlQ3lg5k3aJEb3i+NqL3oSDVmD
	 K1hCLbvfrI/yVLreuvpiUAF7xBnb3EQ66hSwcahLj8DobZEtiGCS3Od8Mqrf0VV2ND
	 wCH5njEb/HzsN70REAgKrdy/8AxstPRbg/w2tDN1/dQVeAS/kUBgw4OrmK9E/WiZl2
	 asTwGaq8E540A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5258EE49A5
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 10:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169244184873.30355.13716964129213625242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e25657aec5b4c377eeaa08ae04a372bfaeb40ceb5ca780aedac61b8c6ea7fe
Date: Sat, 19 Aug 2023 10:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692441848
