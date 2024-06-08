Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC4BE57E
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717870643; cv=none; b=d0Yuac9+gHAhHOqm5gzFMFVRoII8ooK+hVlFVumyKLUGSP/cGl/sefX5HEWAHTKFU3R2g4p8fSJeTHeAmKDjQppaaj7JqlGnFS87Gm+J33HD+nY+FruBE3iqeHZA3nOhu5YadqT3sI3l1S3QXfks/i2bgozn1B5qdKhYCL+MRn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717870643; c=relaxed/simple;
	bh=Azn1PsPpSvxImZvBfQvhvPJnBBxB+MHYqKMUlkplAKg=;
	h=To:Subject:From:Message-Id:Date; b=oAOY4erGDIGLxtcnbphRQcxWrVo5C2bDj6p4uBLIS2TuSTxByjYS6N8hdLXwIQdAXnEs3XNmpp2Zhjf1t7jQv+BisLrFCfXdzv/syG/RN9kYVR0Aj586nFaI/fiU7wLrlJwwkpYCPBo2VdQq+Y2imkTL8c2NSMHF73VDkjOz4Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvRdXIrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvRdXIrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA154C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717870642;
	bh=Azn1PsPpSvxImZvBfQvhvPJnBBxB+MHYqKMUlkplAKg=;
	h=To:Subject:From:Date:From;
	b=LvRdXIrlw6fkOnHSgFUDp1lkQ4ArF99pIJRjtLX28TjaVOmmBBaYpDPZvReJiHtFy
	 7pMA6HG+QOPnn1npaC6Y55MszPiYZoFiK3TBmDbzyghJQcbNrEBnbNQ+Wgw3kiT7A/
	 0yL4AOO35VF+2z2PuBD0vik9PdLt2v7UDxRnC3pnAgiSR7EnB0sjZrOWDNWwCH6gvO
	 kqmcuUqIxMA8VdiZy4brR2khqP03aPlG+I8QQRLtJ9N2exeIPOIpFU0h5zKzFfAaww
	 PhoSnczTg0Cj10pR2gs2YFP8MAZnOcIdv6hRxlUREIpo8dgvOiNfSugERIODqmQAjw
	 x8/DzgRUNIWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD00EC27C5F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787064276.17660.927308430149794327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e9fd983adf7d61a5889b08481cdbfa9e834a60b8970ca312afeb7654621c12
Date: Sat, 08 Jun 2024 18:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717870642
