Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D9C1FC7C5
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759231793; cv=none; b=j6NITH22HLbC/udQRPuyQZcvRE2ZZuVB/qE9QNfOM3ilUzo3F6Av5XeSx5wlT9F3Nlj7NByeDEG8YGlj1YUt1ODmI+jT+l1/RJj1jv4ahk45LNpNc0XVYK3h/pFQj35J9lbTX8Dvtbasox5XUoPcSrvbpSdP7BHg/xQfc9dEQj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759231793; c=relaxed/simple;
	bh=dKiRyWUaiWy8cSQnLUqEiNTjlN8z4rE+mw0/7W08Pfk=;
	h=To:Subject:From:Message-Id:Date; b=GZ7xnfqxY72JYPiEAmFP9Wxekp/CsDlzGK9dx5cUzXaELG3odkTsph9Iv9LlYhrC+YWMpA8MHKoCOeT3GZ5Fv0rWEifEmRezXh9V3VJWnR5bbCW3cLLkES7XGZbpcVED1lquS6NLjI3fhQIFer8KYhc65fEWiIPNS2q0a9rLa/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syBsBJr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syBsBJr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0519C113CF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759231793;
	bh=dKiRyWUaiWy8cSQnLUqEiNTjlN8z4rE+mw0/7W08Pfk=;
	h=To:Subject:From:Date:From;
	b=syBsBJr29l1vf4M4D+ZdRfMQ0B6vZhPaz10s6SMD16PYzwmzRQ5wpHHvPy/rInbrm
	 dz0Q+VAJdPMYeT0uTSIkJ3tSEm7vSbuUK76lrP8aPjAqWiGbVnV6Y8QkcA8ojdXxPH
	 UzA/ChBt36yKCMPmUWubJlX7PV0nyhige0rHdf7s7K1NznqRlkX9hXwqe46OXJh+4C
	 y/6q7ws6fqMD8PeMvk6suFA2ordDaUzVvrtk6IU4YQuTevKD4FXOeY/ocwODpUttKY
	 bs+r1t6MluwWMCL50A0u9JTJU4bXAV9EcNc+3Nhox4Q+3ff9NUiHCkorb0r5vvQgps
	 lLqr5MNYac/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910DECCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923179358.6212.278644575329767612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc585d93533886384a662f7fcea3308a4ad5fac04bb71e354216298dab73941
Date: Tue, 30 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759231793
