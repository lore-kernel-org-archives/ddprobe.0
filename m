Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D676B1C15
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F75C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669150254;
	bh=UOj+AEzxSTSTJgGnS9KOvDvRIbMFOQlrhGPBmavU7FQ=;
	h=To:Subject:From:Date:From;
	b=FbULMldPyNBjaVFyIOr/6SG4K+9gk4Q1D+yHTOJ71iy0QCrm8vSfiMsII9GIo/Uyc
	 Y50QSdOglhLu2M71EHk+e8gfW0enzjgkUB1vj3nRkN7SrO3TU7SNANle6ARIGedwiC
	 jvJ7gVQyNPPSAYsPCp4N67KvX4XKcJgx/OubIDfUcjlm7x5AEAs55A0gIPiQZowkr0
	 pbnCDdUJ7Hs5SSA/p81xmkG5zf9d4ziIGw6gLgPkx4Grx2+SiIsswRa2IFOCUxJdzJ
	 7NioWujDIKdALG7nM2C1ypmtOTJZvmT+s0ErP6pO2QJwDIodjn2J4NBf3mctTY5w10
	 8A2av57MuP1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563DCC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915025434.11807.2889532099202483720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e310cd151358dd769af9e6db51c61c6938f493cad1e66965722a4303e0be18f
Date: Tue, 22 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669150254
