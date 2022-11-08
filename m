Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D486ABA
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 687AAC433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667898654;
	bh=XMS2uWHvyY9VNo8oEs2S8GQTm8KwPV6bvKdfz49kRVQ=;
	h=To:Subject:From:Date:From;
	b=OcIXnhpffJ594ZMdlgHQuQD/So5iCzzmXRw7hy9VYpuoCNIpLnn5hjHW1vWnYTv6m
	 dkkP822xXHfG1j09BRFZAaa6riWwNIq8GIBAPDdiSjI3oRa9jo6s0coFP5uFuPCL9T
	 /0DsdhhTQQNY4X8OdbKhlvbC5cARBwhiOMC49rpdVYnye5+cI4UxWtwEaAYqBAo+z1
	 BXPP6L/6nQUces5DoQJ/sDHyOLWY7U/shP7t59d+B4XD+/Igh+6lWymNn+dEkP7vNt
	 AInYp0K+QZc+qCUW3iB8p+BQH+5CM3MlbneyCDU++oRkBr0AZPfnjSwgAIsptQltIM
	 NDqpfWSes7kiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1CBC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789865431.17285.6815734245129550704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0973e950cefdecdb003fe510e2aec38f375734154a7d59f3f14ebd83dcf5a4b
Date: Tue, 08 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667898654
