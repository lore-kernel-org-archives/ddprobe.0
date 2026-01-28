Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0777527B32C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599434; cv=none; b=Jsi2raUoirze/pcbeu0sGiVnwb/+BLDF/IXyyona1SU/fuiaJCMpruV8bwYn4zzCaBqiHoN4GcDtXplahiT9MOt3nkuCLZ4tlwsskUKPevib37ZJU02yM8oE2DEJFV/K1zDJwkrKyk7mj6tnS4TbA5h76KbU2BSN7a6zRXANTiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599434; c=relaxed/simple;
	bh=+XP4f/aXlDfVsOocFCRLpB3JKSeQn7vGfmhMeuTDCZw=;
	h=To:Subject:From:Message-Id:Date; b=aq5n1Cx+spBVWsyf+cU/y1RVuAMuBfoBCmLvTTLTbFpp2UI4G5rTwn0AsnuRESQsf7HaPQEmEVc52NwnY15EGzVfwMd6x/d1cpESOFiUGPUk4gLcKBTJi4K690e0d6aVXOe3po0QjSGi7F8u+C4h3suVGMRMWLAV0zlE09vY/gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/4lh3kW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/4lh3kW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D2C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769599433;
	bh=+XP4f/aXlDfVsOocFCRLpB3JKSeQn7vGfmhMeuTDCZw=;
	h=To:Subject:From:Date:From;
	b=S/4lh3kWy3DlA9No2DKhWOo4m0GsTk+OX2P8swNt2W5jrXGRXxRHh91wJ9/GXwRzw
	 ThEMUioLuwGSCDbZoRgHpiiE3pAASH6sVwWNGGEePinr07iburk6VZGCmlyC2GVLTw
	 5ZZc5bgGW9joXcR4yUGJ7HWUIdmG3Ixfw26f+Kza5TDYjq3CWm26UviO8ZsTu++30C
	 S1zC27EGkWyuW9pvX1chyOqMQ19pVjwCTYUhkt8tGCnXWLkmpuyqqrXrDPAZmrZpZW
	 4MbFLLX+vC8mltmVbdfM8K8MYRcIZ9BhvN1uWUmgd7Hc/WOD3lNcS7m6VugQTWYXUc
	 XLxc9ePxa1WFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F689D25B45
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959943357.14451.17154473879526212361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25234019845ed53b511a36a060722a595af8b054616cea1a8644b036adbd4d7
Date: Wed, 28 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769599433
