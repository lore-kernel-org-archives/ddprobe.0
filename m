Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E9D2D3ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774713894; cv=none; b=JCSVPEMxIFWcE7QtKa8gUnaNReISHhYgBWX8QIMu3UAhivq4EUKdwXaFOKVOWFwLGRQgqGHMvFcTxDSVzmCQ12H3uVjkNQzsp+YdJhYeaq/S8tUCS0anLjQp6wZqRIiQoB/0xLXbi6qJrQIU+t3Ue/tW4QKovKy1y2Y6t/FQ7EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774713894; c=relaxed/simple;
	bh=o1L/NF3rnDBa0eXsGvEg4DYHVrbTJbvUt/+aGe0roNk=;
	h=To:Subject:From:Message-Id:Date; b=Hesu/axNoGLUtMCJmO8oBzrUX3l0Ofyjx1T8pNM/TfEZsr5zvfLarl+zehMNuKZ/zEepur+4wWgFTFhRaJpi4cqTbio4HA2ftdaYgsXSC6DUDJnqHJxiyJ5ADeLPcKHL+3xD+XT9luNs8PsN2cBJD8/OMQB1w9LX+qGurAxNYF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0i23FWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0i23FWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774713893;
	bh=o1L/NF3rnDBa0eXsGvEg4DYHVrbTJbvUt/+aGe0roNk=;
	h=To:Subject:From:Date:From;
	b=I0i23FWOyaBhfKKdtTVRl6GGBpF6ZASviJTVRrtxQ/NSgAaTfgIIph7nPMTzCAFVc
	 LQTxOoIASOk+Czxa1N11araSaihTQpXSnFv0zKKs1eKw82Uy8+24+bDHr3K3dkZnUq
	 81bFONew0RmzWJgzkonhYQ0Ba1BdX1w0719G5bQ5oTygVttMcmGKwjClhFKS2Ko3hL
	 q9IEXHSrgEvdV4MsM9JgaaIYGZPc/aHIjvjCDky4oTf4gdSwxe4YEWyv/VMZycHw4M
	 BYZ8R2cpoCU7tSSYeApgb21fM3MCpp2kPwFV9A/lOZ35Rmg1movMcOftjE7tEI236A
	 9alq4XAELnrDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108F10F3DEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471389358.17467.274830125545263316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3f972a3c72df7e1935199bd40586d03b0d8782dedb13b100742f27ad397c6c
Date: Sat, 28 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774713893
