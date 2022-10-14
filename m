Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33BD36D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DC8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665724853;
	bh=UGm3DJAD8PCjomJdFLhC7WbaVqGRtkEXrNaU17sBPPE=;
	h=To:Subject:From:Date:From;
	b=sfTNap/dKqm6LoNACux7FjAy7FbMcl8/Jl/zay038b/NZfq5T15lNFpf4fgCYUZ0R
	 s7uFLORHlFfZgcIQIcq4IjXVUYj//Zah7Ot467pL8C0rv39265IojBBBN0jlhxGhxd
	 ikk2RSSeBXU+h6Srz1lgF3U/KekSGTLfJ/jyu/PlMUpTlQSXYe537++U9V/XK5aMP3
	 IV9B4JuhMTI1OkxY24jarYEzMtwofmaHx6D6LZHX9uIdtU90n7ALHXgpfHzMB60sL5
	 ElzwyOWDQOqttt9a3fJ5OojXBqBWIagrbGuwVcOzWda14rWhac3aj74ovpE1DNDynX
	 gxMZ7fygf87VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB54C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572485333.20579.14633515351266835250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaf6d66059fa1f066d92599c4b0507ce2b223c1c37a2814215ceb6d2f3d5b52
Date: Fri, 14 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665724853
