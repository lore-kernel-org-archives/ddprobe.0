Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42FC10F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FB57C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670667087;
	bh=PPe0Zg14XEEKNt3z/+vxlZ//zU5BGGOI/3s00c2FNpU=;
	h=To:Subject:From:Date:From;
	b=r56Iodh50ZAe8Cha7n2PD/zYiCYqSmSdOfktmpOiRvZB1qdLYk/U3D9Mx1WBVIFQ8
	 XGZ5M5jvLTZnq+VGAg/DPamXdliaIkpPvnpnEXYy2dRCXp/30d3FD2Psm6NN+aqoZm
	 Nkf5013u5FlxBakWxVgPBKSaV5un02Bt5A7xLMHO09E1kXoks11wYBcwIfMNQyT6/E
	 +QFe/f2Ye5KFVvPM75ZWFwNCu4L4Dc0kgJTEGT4me4MBDQD/mnqCkJi4yAsAIgtwLu
	 BajfeGhTRI2WkrlCx6lN5fTFiZMv8r2JvAujv1KKTGrh/N9NagbLdAxFpVE85qQzT8
	 Kh86ATn89hvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74FC9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066708747.22806.15199289632576778811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0271f3abc90551eb2c15fd250c37bf8a034d7336f3d5899bf1e31e87f23da1d6
Date: Sat, 10 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670667087
