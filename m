Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5112AA941
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 09:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C483AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 09:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689672068;
	bh=QV4uMmbZTyPrcv/9lyN9tr49644+OOUwvvxzA6iNhqs=;
	h=To:Subject:From:Date:From;
	b=W0+X8J9OwbqzSyJht2MBEyx+GjNN9DqCn4RWBSXM9DYyImngVBhXwJRFW/pz2cQ8X
	 HXvxEYmgXEZSZLlhAin91czLvprQmnXoHsenA0avl26ziM0468rx1FOilRQrTFiiy8
	 r0TjnO2B0pD69kFA8NY6XJPFAC1yJ5ODSiRvCD0EJufSm7j8pFA3R1+MgEhJoSujy0
	 wSDacs47nEpgBzFTbqI/Fn//caOBFoG1doFnrK1/SyizKqoOGs+b+XMszhNmJtXiGX
	 ucjRrLct9w/yrK8q92q6K269Nh+NxMKTd5I3lxMlpRDRF1lGEfe9wvoE0a+g7/8+0j
	 Cn2iWSTJSKFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AA5EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 09:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168967206867.21813.6204737424621398131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40dfd805e93c743276a59c0e2f06a9fe245955d29c789f286614e1cc0ae8cc51
Date: Tue, 18 Jul 2023 09:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689672068
