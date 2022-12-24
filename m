Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A82B3D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671909087;
	bh=f7DMK/+5i0CoQVTe3TS5ZP3IixousTAamNfp675stvw=;
	h=To:Subject:From:Date:From;
	b=Dytlta4jOrxBCDjpNUaAG8Af1dG8TOj7HTb30HHu5FlZmv/gWWIz3fx2rq4xgvq3n
	 DYv0o7jRDjo78PnTKaKn5Nh3mV38JL4h1FwtY2q/yLTu+tY8sWoZD0aGXvKWwixZ02
	 KLzN5aKHGtRl6WCGOFZmiXLsdf0B5XGX8PAzIsVgOJmuEK2ogkOEMLYE7t3ewcw1hF
	 IvwBTi0lDLLt3FQBsEt/HaITgG6jRWxqRILL7sFULkX+BRCtjbGPxsc5yyT3lIEjJG
	 xPNzLbPYqCsAuaMCX9lfuznkL2XjYSJIAUP78ExAB8IwzKU7q/vicX838E3W8gGgOI
	 UwSrO/Tr0ecWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EC05C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190908747.7759.18045096196427025407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cbc737b47a603a3a363af3bcc98a2f4c72ef8a33cd99f7132e59802dac63ae
Date: Sat, 24 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671909087
