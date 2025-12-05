Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5270934F472
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764919976; cv=none; b=gsovZvmbiiOJ68zXiX/3VAUupWIkjztuOGadSwU+nqJLixrBBamVJkFGxOXiXwWwFXwzwcAn0Nk/mnK5uknjnj4iaUDdbgc1Fx/i5vzpzwRkS3pQbDXMInoFw5BtJRpSpTDiuTffRS2h5hXQnQVGdN6lX/mTThNzIAmj0Ej6vMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764919976; c=relaxed/simple;
	bh=CgdtAkEGGe6/eoiBm7dFEsbPA/oR0ut6jNQ9nOFei3M=;
	h=To:Subject:From:Message-Id:Date; b=liaDJsT5tE9h+FVRbS2ZEBLq4PfiIxm/7x9w8nsBV24TeWc1dEdCrP80+M1C+/1lgH6J2167S4zW1Rh5BEm1SEZriaJS3z9pFA3pMLEmi9Q50S7e9+WHiZ80KY6m+mVvaaDRDTsqAnSVfJeejlbAI0OGl07BGKv90qSZzeBL3xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVxDgcNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVxDgcNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3702C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764919973;
	bh=CgdtAkEGGe6/eoiBm7dFEsbPA/oR0ut6jNQ9nOFei3M=;
	h=To:Subject:From:Date:From;
	b=jVxDgcNam2IUiR1uITQ34vF2KAf5vi47FDKC3kzykj3w6aVxOkcj4ohb3ZqymuLa0
	 0WTdJHwNVWl06qhpf71a8HOMTfNF2Fnq/xnBKZKUdT4Ucvs5oDo5AO152T9Bm6wNGO
	 uAV3bpUP8rqbXoW9Elg9lfR0D0bP5wtZ3gvtAhnSMgmZH6qBXcbD4joQOl8u1ReQsy
	 OWQf6C19tL3MJT3L/2jSBpzxmwE7ENrvEpi/fVVmAUYtW4CQWtGAuxXA3WyAicTsBE
	 Jwc48Nj3GSd4Fj12NOvSRw64pDwEJoWittDZ1LC3D9pc3bqV/vbEFCL6CbKI/QhOPL
	 t3s3FB/UxtDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBFD2E022
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491997358.11543.5445645163605267578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79db294385e9edac979d9e4ad79644360ca04964f0914e6c13aa099597efd38e
Date: Fri, 05 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764919973
