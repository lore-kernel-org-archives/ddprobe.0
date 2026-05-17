Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C172DC798
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779029434; cv=none; b=co6HSetYJceyw9SXOVHYgz5mekD4bY33iU8F3bLBVN2zZTKT+pdvmlYGdgDGFuU13htjXj4doR95jnbwVimA+2MPbWhfFH71vxH8CmOwDcCa4bwl/gxoB5ikuXVMDWIQ3hOycu+sn5Yn2dJYqCAbL4rdw2JKULyzBfwf0btXJc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779029434; c=relaxed/simple;
	bh=yNcR9nvWbzK2QVMWBMhHeNohivoQXBAEdaqTfMRxcuY=;
	h=To:Subject:From:Message-Id:Date; b=Yzr7DTkYbicK2nUGxJPub2ks4KvwaOEMPgI1gBVFqbvgExCT9TLA5Q+zij88EcWhcoxsxUCwheIrP+1UIL7xzHr+gl2AiEktDl8IG7B+L8KEuTmA0nzT14SokrtZS0+Bcy3aZJ3a1r8YUsWRdxYXEQ3ZURR4XSlODGgPJnamkfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmvXNQ3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmvXNQ3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F1DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779029433;
	bh=yNcR9nvWbzK2QVMWBMhHeNohivoQXBAEdaqTfMRxcuY=;
	h=To:Subject:From:Date:From;
	b=mmvXNQ3tpOVCpEb/YRCnKFoHRPzUqruIHwF46q4UMqJHSVQqsEA1PNMkMXBGJYOtk
	 1l8sgLynRxEpK2Kzi9dYw+iFZy4u9W7KVGSW+Srkj9YFx/KRRVCf3GSW3IpYZYnOIU
	 LUd7oDROyXQ4KcLpDmIVn5k/td5TErxIE1f74kAbWnDskZAYW41SO8KxGQv1rbJMIC
	 Hb2khD7yGJwfErC+T2yA4uqUdVrpnBU2Zg3zgOuhXaHWNRPzOwDRWi3Qm+RfakpEIh
	 W1NUMh42iOwRxPKpSKEVbr5rQE78scfFVn5WDeIs9z9/RFCxnwUYmHHC5ytgG+oauh
	 51stlk3ow/mfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C27CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902943368.19156.7123954642522633481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df7623df3f5be14ebc7bf128ecc194468f26ce97638a72a84077dedce3745f5
Date: Sun, 17 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779029433
