Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1958315AB
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdimB+T2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D946C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702097296;
	bh=56asO1DLAQkgWkxj2gNyp9pg1LD+eDpzu8NK1j8luWU=;
	h=To:Subject:From:Date:From;
	b=LdimB+T216djt0R1t00rhRbsLd7XnpmanKoAL0uEr1ie/yiiOxA36FZ8yJJvGEufK
	 JXwh9jgiAoCR59we+/eAH5wOuJ94aHW0mVPhZ36i6FwkE/2D8N9y684eL9+Qxrj+yF
	 kTZpCmqAhIRQPTGiP6PJnt4sxDmGrOkUvdITt77mj5jw/oQiBThHzlPqz0U387plmy
	 funvkwaN4cJJIMTJjw4gbW4VTKoWTIEFC7LpHDgr79V2SG2RZ+VsEKiItZMZR1bE0y
	 DyIkI88hJqrnvMeE6IJAYee9EsrEilbOgRm7DVcGa6bLKk1bD3oGwpmCHQruHHh5vH
	 ZpiCQD/iNboqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAA1C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170209729636.27419.9076627211372246393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3744c6f2b209b3f59dc8feee7a5c2ed5c6aa1bcf32c31de1348b070c53a0ed97
Date: Sat, 09 Dec 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702097296
