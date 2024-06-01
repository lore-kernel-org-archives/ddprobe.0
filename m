Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D132594
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717284323; cv=none; b=OM0glod/qQuWL4lliR2dRHnPUouebVR57pn8WpeJtA0yX+GxiGETToEqsC8EkP9hJuW1pqZO85fUUmsv4JurPuSVnty4juv/1HglCPBUG77DvHhTDOILp8/DODmld7T9dgRokXcnRxkEsxbj3fGIRxtH2ByCMP5bxtp6v5W+sq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717284323; c=relaxed/simple;
	bh=a4Uo6cHO3ruiP7HOvkHQO6n+pDtPshjmUGTHOTgywlA=;
	h=To:Subject:From:Message-Id:Date; b=PhzrxQll5yeZ3lz7V3qIgMCCFBo84YRl7PhdVoLfHNnDZP+XSV9f4/ZnG3aS8BiYOf4Sv9ajxM5dMUnWecvaRZ6jZ7rwgUWlYsqYQxYzBeA9c5n4XhSWVPyGdyaLdaLDAJecv/kvmV7f0x7TGB73dcT60VE1gJaOFCl1cMcwE98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lo8FWOsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lo8FWOsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CEEC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717284322;
	bh=a4Uo6cHO3ruiP7HOvkHQO6n+pDtPshjmUGTHOTgywlA=;
	h=To:Subject:From:Date:From;
	b=lo8FWOsMO6HuI3V1coJOUkdVbwrqMfAhxAtCzltFAk0Z6i6w2LWgyowUX2t1jFed4
	 Pz57pMLWtoyfLl217/xVOtyxKUuSng6ZYSxdlkSxGv5RjW4psXslil72DmpC7ykVfx
	 2lsu5Mv+wxJIFaz7E/4710jI7GBEnfMfg/xYZh8tAXF1D+ba5fcHOVviDlO5Is8Kgv
	 ZgRqJAGT3wbma+tc5dfj0TmgUQdoY0ATN0auUrlPJfgRQNCLC/dECzBQg8j7qa9ZAp
	 tB3q2u660dxFjzKij4/erZ/Mfv0gjWEUs/fMYWjVUOAL8FsmYAQgdROxImja2mjxsM
	 O/xuXG6plhLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0675C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728432276.20319.15273471807509386924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ae0c96a79013b0731d0789a787d02664c18a0b9233936c95ab4a6a8b9bf27f
Date: Sat, 01 Jun 2024 23:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717284322
