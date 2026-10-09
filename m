Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F95E5013B3
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791576034; cv=none; b=JV9dWRqgFCzkff8ln/Fn1z/htoydRSDhRbH0JMtzQ0JN9SlguTKAMRkLvFOUsXtMDOaV1OhxVxfzftP+0epdfMZ36uwbBmjEDTzD6xYRQTS/G0Vtvt+1cwrKG60VNJ8SW9bxKrjFgpRr3yZzQEDI1cy7f5ABTMKqUde4PT5BuqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791576034; c=relaxed/simple;
	bh=Y3S+5Zpy/BX4B1ejEc7txVMYlP6v0z7pECKaQSQhVE4=;
	h=To:Subject:From:Message-Id:Date; b=QQWiqg+WSdXtspeq+cO7ObjkLtFxPhIxpkCYk3QuADFuo3MAZ3bJzwDKtd2S0N6JPMm2ghnM3ZkjsWYCIRMZpeT1We5uJif3Br7Sn2XSVK5kurwSfYujOO1U+nFlv1X6dxF0HjY+tfv0SentLl4mMTVLaJUPDjvIDmxJDy25FKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izVNlaX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izVNlaX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FAEC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791576033;
	bh=Y3S+5Zpy/BX4B1ejEc7txVMYlP6v0z7pECKaQSQhVE4=;
	h=To:Subject:From:Date:From;
	b=izVNlaX/gjNKPVmupyDFb3Zw2wbRIdzf6HJUsTqBoxnEizJ+zuf1/fRfKosjKkFwD
	 Uhs6s1W5DwoC0CM2QCgABnaOFF1vWcJLg0UCTXWdyvVqOMy/Qw6jJpuPu8qXjQysRO
	 cUrLC26bcVtTpyu+1xQSnYxT9M5JXwMm9pHI7dJcmm4JtxpNigX870y4cSMTmTdA+q
	 fPN93Yl0dVjZ1woD6csWp3IJGeVKM+r1nSAmFhAmSBDphyXTcKkcjx1hcpFVPp0mtQ
	 jaJBVNKC9HJR8gH9dXwG0rstnspJM+al7aEr0fqm4l0kSkC0MQLbWUdPpKlTyU7Q80
	 gOKwXoFWOB5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C0CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157603368.30127.5540009302886605993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556187729d3850aa63622597922f464684c60c6c6982a072b479a0cd62f032f4
Date: Fri, 09 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791576033
