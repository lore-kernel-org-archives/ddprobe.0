Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39E6E826
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B3DC43470
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666930854;
	bh=jZj0mrY198OewOU3TI3isxtPFks66oQE4rdM2Pp6K8Q=;
	h=To:Subject:From:Date:From;
	b=bSwLJWp0PbCx/cl4pmhGqYhx9XeP4Ra2GVTBodKxCPPn3jEShVtoGP8Y7j0ecizl+
	 WbH5B5wTMvxRNYnbjUbKFA/K88TXwepamn+JDTkwpvebaI+hGgCcJaSMxjOdhNsUyx
	 o1lNvT/BoO2YCGLRcnnRbtbdy6MQxaYnU5+BINejHpPEVB/1cXt5AVMx/kHRG6Tm9Z
	 w4UyVAufGXTdx5Yb4PhPTXIDPLLsSsjkmeOmdE10m5BI7MSg8cxzBxKkXpBVFUktIs
	 adhuqjjTYPrU8KvCw6cgoM1WEGV3AfjI4LHbVZzlJOSkaZ5enQISk0gydfA4F+4Sbi
	 2Ep1Kk2xTF6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B5EECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693085433.3902.16048948583396139647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677ac1e50b2932eedcecac4d9d0bd213bfac35fdf037d0cfce06a24d499828ea
Date: Fri, 28 Oct 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666930854
