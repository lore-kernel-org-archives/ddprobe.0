Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB98A441A
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7327FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664998853;
	bh=l0G2ucijr4hIvh01NH987KR0DaWCra67y9hwGTx45Wg=;
	h=To:Subject:From:Date:From;
	b=gurfv5CA0nDaG/xxOF3bLM294l2BwhXYeyJ/GE4V/IEz8lXjQTaarcxMLFoOuMdBt
	 tUtiRQseh17jnPlL3EnHYTWtoTvEna9HfQK8lljgECi/70CTddW5cm744X2J296HYp
	 VRFheizJpgbeCapGlp9cNuHBvhY2N6CVtzQ7WzUZE5oGVjaV7SaaR3QMP/b8rRzBJf
	 uZzyQtzR60ODITyP+RRUk5OT1j04bYQayH1jI0r8tr7/Loqn5GqTfCGNuULCYtzDZ9
	 gU95xx5pW7//CiMEL6xxSJbi/GkXy50sTL+oFGMB0bFdPKbsdL5oAXVcA0jslabREs
	 241l6CleADJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ADDC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166499885333.27299.10915120144796821361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37965ec2bd9e31668324732995701a75203a65a19655e8d13294c96d149fbb9
Date: Wed, 05 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664998853
