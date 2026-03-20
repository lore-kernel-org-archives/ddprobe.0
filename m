Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B813CFF7A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774023894; cv=none; b=Te4ZrXfGDMU6gA/V/vxNq8h45HPXXEJwEiX4jdz/WQp89c6ffRrnsu1j71yKNDiAbAYGmBFXVlAQuT4/WufdqYsrjqaRl5ItzuB9Y0XZFiWOGCOPWFxtRZhhv48k1AZJSGbpxiwgGFAaZvEoYfeBXDjBfmnQTNHmg7GkQI+7RCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774023894; c=relaxed/simple;
	bh=4KzkEycR4euX5s4U82fgB4B7dHR4ShRvlqke254evGQ=;
	h=To:Subject:From:Message-Id:Date; b=Y4U8LZ6HmC1OXxMTGOp0ZSJFHCq8SMmY5wYpWVtNA/Pq97BesXxdngJal0n58diAvhPRsjiOmSaHUQyb9cejAyhBODNn/RMr4yawQdXy01wBbO4J2YPz6vRPfLQVS27XVoOKI3JEVG3tQdkyZNbf9+x5XTJjlCcJLn48I4u5c0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sjsjj3DW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sjsjj3DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774023893;
	bh=4KzkEycR4euX5s4U82fgB4B7dHR4ShRvlqke254evGQ=;
	h=To:Subject:From:Date:From;
	b=Sjsjj3DWduTLrOTIKC3RTmhoukssztJXwYH1WKuyf6l8ULeT0LaXlE2c3SjAQ6563
	 Phj7FJ72g5qH4X3xYhFhvN7jFjCqmbWUikIcc1qH7C4pRTgqq01OKtlxHdLagLj0mV
	 bZtP3e99K8deT1wvTVKXoN7tEm9Ktsbb7tKKfIlqZtwyRZuxseaUfoulrp+yaEdwoN
	 bp+lxs+bCVVwF9npiiRm/16f0SUx56oTot79ryhPxJ7CXD37zLjN1vHn+Hq2PBJeAv
	 Cl/BdU684lZx9pKd5H/MGPLpTNvj2Iv9UBl1m/9L7iImVbKZbNoaUUFtupLcs3VdBS
	 AnQEA1WAZZuEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C1310987A2
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402389358.5906.125455315764259955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11617b0bc336aee328b2ee9ce9ae0567351120c09f26709ead13241e2d79943
Date: Fri, 20 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774023893
