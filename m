Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EDBFBF0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767306234; cv=none; b=FIBQYXHPJxHLm3NPXLW8xb7sDEZ8wp5vCOJkk7qAIavmnD7oV2Gitp7rh3RXDsynrTw3+RILBYR4ffpmCgsPYAYL3tEI+OyMIDEu+vCPUgANDcikxiG+YBOSXR3gKDKJfLR680ygLhfN1x/+GU8g1FJiwWzCkktyaXMRmPdXT/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767306234; c=relaxed/simple;
	bh=RhkLUhFCtdvSp7M+q0hjI/KTP/TUHpmmJEG8xf/4QrI=;
	h=To:Subject:From:Message-Id:Date; b=NADel39UnvIw0ldNumAsnsqq6ZR2IXOuQtPP+NUjBZLDaNcDlDTQCyQgPdHiiBq0q2viz09x0aqzjTn3Qc90iwe3S4r81Id5yu56p+zHr9Gd7ODuSiwzoD0Wy9JCRkdO/6cr0DXAxC3aCxo3HscOyFM99DmgfDrFZHfw4iT+n5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vq7CAUJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vq7CAUJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84FCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767306233;
	bh=RhkLUhFCtdvSp7M+q0hjI/KTP/TUHpmmJEG8xf/4QrI=;
	h=To:Subject:From:Date:From;
	b=Vq7CAUJ+/jqFjIrN2Kme/hVetMUqcBu0leRoktkrIK/CMBD7l6JlI2DyrxWyOabIB
	 oisI6uAF/W8SzX4L9IQAjqZ6gKspIsl4qIP/DKyAGntedqKXlePsreeC3CvDYuVUAR
	 bLfdQ2NNBheaPnb4D9OTekBz0OHc9mUGT6igv/gUtC+jnw82ah4oau2cffdRJ1vqxp
	 dOrqI76U2NuSsNYK/DBA7wKEv86l13MjYLaItMqetCaseOMFVSK8SBFy+nmDpUVkwL
	 eoSN2Ub2uxCFm9fzHNU2Ienc5vlO4zW66edHDUgwwwHlv/FTOu9W4HmHIPMAxlXOI/
	 DT2o9p7t66vZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CEEEB57B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730623357.1649.10466275945802045220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6ad516bed526707993a7e09f3728779dd553aae65a1435121d540da4694634
Date: Thu, 01 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767306233
