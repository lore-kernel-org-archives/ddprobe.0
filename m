Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B42143ABF
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fF9/HeXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5A5C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696624028;
	bh=sxtg98fHv4fLivoUGmtmFno848wEsaEtenYjdWpVdEY=;
	h=To:Subject:From:Date:From;
	b=fF9/HeXDaYBLb5G4vuNL7Rg8tn8amoDqmb2gjL4A+fZX7z3kIOyWuBLso7DpgPD8Q
	 K+FkrUTt0XE4RlKAlk13aVIGgZPfnVGHV7ltJA+wNZGGlXVbL1Sbteg4aYAsuUB6wN
	 GWoORmA6Am8JNaVlS14cto06kyZ0Q4CF2jhDNMfUHRHfyhMSp0tketUSGDhcnpS022
	 Owm+Jr1j+tDIRD7y1sC8sYKRxNm0PRFVFkCGQ1FGtFEhHvovvs6EoYLkI78W50IJ4q
	 czPA9sTLY5UCoFkptlRDIsa5gAjvhTL8hpOiNe/nRmVbkUUf3gkH6pt4pLItJDu2ux
	 LsJnOgT+ztzEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1B6E94115
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662402870.5390.9667144208477255042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a8e322e81dca889225926b5d8ddf177da0c10ffb98c595beca8639ed6f3942
Date: Fri, 06 Oct 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696624028
