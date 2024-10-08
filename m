Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1981D0F44
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728428754; cv=none; b=ZC4v1aPmpEIVLMDAyFhx0YcRfaeUbluSbbH9bGziNRrufanzVDQMrL6DNh01qY+5hn7Plv2KPNUfPuk1xQg5zNhgF5LuZ1pHpNuMY+8GG7B4vASD/6W9m/JfhvekuQGClg3VcZUPvSMull6jPWi+bZSGKulp8Y4RfwUfOIyqMcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728428754; c=relaxed/simple;
	bh=lxnAqNplFvQQv6b4kA1ndAcZ4o3XlvJHwUR+TgS/g54=;
	h=To:Subject:From:Message-Id:Date; b=GF9eNCFoIlrMgYQVDVBsrnIwJ1+z9KhCffGgTOtsHGyayxnM+N/uPBFaO4Geud3Lmhmynke8xlvgDhgze99aY+4rSHZNt1n9wfP6SLmlb7Sw7CRcbwB5C24g+hDdqFRC166njCnglwnO19a4hGbWaR2bgfF/8MzqA5UmL4bwzlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSUv+pW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSUv+pW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A74C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728428753;
	bh=lxnAqNplFvQQv6b4kA1ndAcZ4o3XlvJHwUR+TgS/g54=;
	h=To:Subject:From:Date:From;
	b=tSUv+pW0/I925dT5+WSIrKu4pll3AGHuCBTN0SudeFtE+CUlIRyhieyuE/Eqi18BR
	 v3Yu7LWeePnDqbGD+m0jbi+ZKWlE+MzMH/eB+DSMSwyDdcHap3V6aMw1z0L4dToUJX
	 rPxaR7I/3tviSF4b2yS8WaQ61lPMX9Bvm/tGpm10LDMWy+PMsakNpDmLCAO0n2uSPi
	 CVsea/T07y0TyTGHbcz4Us4BOEwBbEJqv62Iymv1pg+RrTlvQwq+XjKMoofeAIb9Uk
	 9ndYzN+zg2D0UH01KWDNNlRFZml6CVL841F8/IjrsQrFU6N/tos0QO8vLZnUUvLfL/
	 9MeVAw4PLdGXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646BCF042B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842875358.11787.5793081591373060476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c70a6183d328b3542b0d5c39807df074bb8bbfc53584702556a647719876da
Date: Tue, 08 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728428753
