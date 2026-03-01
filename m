Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243D01F0991
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352294; cv=none; b=CPSI7N1/Wga6CgqN29u1zUd6CcZ7eU1ccNg3svdMpIhuQn+b8BFIh0ySOrYQf5Vxc1wu/Tb+Nwtg3TM1O3jK72VBi9NOPKceOQmqmjGTuy0zImVR+emcJ91PAbPzW7Tn6ZeUgsHjmeB0ubzxudW063whexr1MOZxmR7RVFW5ivE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352294; c=relaxed/simple;
	bh=hDFVCM/Go74JWSqpBs0VSKdFL3k4egTTLK0xcDRD2Zg=;
	h=To:Subject:From:Message-Id:Date; b=qSF5f7oA1d8ViYPYqG+xt/YhJpuNzhVwMjZcz8yDf9TG17LuOfn11Et/OcBqoDrBuUuC2+UWpVrjUdZBPGfH+Ujvz93bi1+uL503BHUM+eumuIys4NsL5io621BHOn4WbrFGf4OfuG5dOAdfrVeIpCDOoJywODXy99gzGdtxIVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSbq8MUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSbq8MUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B100FC2BC87
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772352293;
	bh=hDFVCM/Go74JWSqpBs0VSKdFL3k4egTTLK0xcDRD2Zg=;
	h=To:Subject:From:Date:From;
	b=cSbq8MUHXID0QUmiC4dU7kSb88+JAnwgXlpUnci2CRJYLQgSvzsRCCwQRt/7BxBzk
	 vjD+pz6nXFyYgwY+E1CazczqGkPOasY4l0oQsrYZusXtdCRxWFdVWyeWIu9z2xlcsn
	 /vq1l61JHB+6JX5n4luAtSakSXIryFngirhuyGNtsHaR8bciXODpQGnGUuiwkP8rWB
	 Ya/U5FYa/nQ2/I8P6IWeEvzBL6ZHtghfmkFRT+tvz/M0CP/ZztRbgT7eVuB3TKmgkQ
	 ixLsOo8H9228rOpgzHY8/qUsNS+E+6ivyqnaNtFchPMglRtxY0+i48hVMnpQzN+tUW
	 f4LDF6ZT3KiPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7F2FD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235229359.19711.618281674842971766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d3c1d1338bdf31aa8b24799176aa7edd6800afc34996e2b436b702883ed2d7
Date: Sun, 01 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772352293
