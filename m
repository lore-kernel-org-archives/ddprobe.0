Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343FD1C38
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 07:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA68CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 07:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677827765;
	bh=nla326QArjyD9uRdvAGjWS/ltHcrdFB3+dJ3rhucsKY=;
	h=To:Subject:From:Date:From;
	b=s4pka4PFZhjiFd9EkxeVon/VwfjVQ73BPb5pe6eHnSEONjtuZ5JwtoVMIVQ516yzz
	 wJVCYVD0dX0syb03q21UmmmxIF6ZBdqecHklMUrnU84eIRvQH6KXPblfjZJHFsjgCI
	 oty/noBx2WpsnIrwHesewfIaSAl2/hugtSUmzOHh9/IfCZHyhPRSNg/xIh2HbX5nNX
	 Emcd2tEUngAiitTURuHZ52K9qo6Cvqrd7Im7MgeCckrgX/WiA3GM1EHDtNScTmVW9U
	 w0SWrHWPJPCr7JCnOPlzb+NX4vIy6eAAj6xHVcHpappUH9g1yYTmd4C7pwrGrfnVlU
	 ZWhiwwEsqXuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C67C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 07:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167782776572.5272.9663327133268429998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbdc8edb0c75bf911ea399c28770fffe11dbb86070fb4602fb4c588ce9c7ef8
Date: Fri, 03 Mar 2023 07:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677827765
