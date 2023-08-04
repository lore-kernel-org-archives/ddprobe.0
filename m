Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623CE8F62
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 09:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC264C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691140388;
	bh=B7Or3tfTrjQE9sZAwhjg6FY1s7UBYNBqW/Z8jhybs/o=;
	h=To:Subject:From:Date:From;
	b=sc6jeD6FcgtEp/kiDgJegXgjEDz6QMkW3W98PmV2B+Vz9XXmpB1Rb0NSDGY1qrAS/
	 el3KeiQwR2HisZOS9uAC4q/YXEdzgw/VPZVMkVMlUzr9ekJto5sEwFHx1CJh4iLXtj
	 vLhNTg5Q3M0B5WdLX/CKU9NCS1Nec2xNmprT1wYnSnNM9rhi60x774hVoBnMOe/XgT
	 BcMGrZhRo786RB5oMkwgpa5ne1o0xMNOtJKZZN3V3nZVO7aIUr2R8TVPQTKmoUclR/
	 qUl2ocl8HUL3btTAAY0F/agwcHFFgoCsnILQ5tZDAzpNc7t/FuMwtxP151ilmajaIP
	 cqxOcRoXfivLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BF4C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169114038874.27908.17813287117175177784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69c3342b99b909f9698e9a8cbc7239897e3266c702797ce8412aa7be89ad195
Date: Fri, 04 Aug 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691140388
