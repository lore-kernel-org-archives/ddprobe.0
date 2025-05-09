Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355082376F2
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746821394; cv=none; b=ZfKzVDfy1gljoyGZtghe3wRG2wdbKSgZuLy/2Jaz1udqPTbQ1Ia609YzpRd1KH8lC5Ft5/nvDh5iQk5iDu8xPihTRXU26eqP9aA4cOmQRD1xD2BZSBsuy6mmvZv/O6bw/hB4BGZQHe6X90NbdVN5g0uV3OTVuJ0eFKEDpASC+W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746821394; c=relaxed/simple;
	bh=QfO7moJ32N2KEX030nlqyy5Ps4OjO2Ev7Rfy+7CKQpk=;
	h=To:Subject:From:Message-Id:Date; b=FejFYHWD4K+vWqgfikrbqYF96vp3Q1PXRYAwGWlysRynaTNPRdTzjxhRE6BZvGYDPiOMGPW+BgrwbJWM6gcC/UNeIwiekdK7h0IOUCqCW2Vl4W8QaT22Eul2b0grs1wdrYsgDOXsSma6kcBBuWKuEAcPwvDO3miXsRBCHWT7QbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4x21VsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4x21VsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88FCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746821393;
	bh=QfO7moJ32N2KEX030nlqyy5Ps4OjO2Ev7Rfy+7CKQpk=;
	h=To:Subject:From:Date:From;
	b=V4x21VsLEDCJIJMmZ8Te+C6qWgwG37CM2dNHxMcZRDZmMKtzbum6Wfou7n4mpA0BI
	 8/GtIwdCzRuqnrqCTVHH4oeXQP2M81svrmE/fMV74h10kFE7SPzSTbcyJBWBB3L/HU
	 2pgU1ER5gsJlQXPZCB7f6ykmbbBzc7cNfm55tOWI9WhE8KQ/59H0F+z8YecMm9SKO0
	 at6iZaQuH764VrSvQA2Jv4twBL1rfc6gI1dd84h9UeCFlldox4xt/OZ02g1IVpqFtJ
	 F8xwPejYQREfEa7dHgrIqR4LjsZsvmk8qv09P4q6juxxLl07v/j/dPtzCZUewO2/go
	 OXwuTh7XTxuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E2EC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682139359.10745.4256430459999225847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b246431546e3d14900c037e88e8dd535d694c3bc9eff843dd1d3ec262157ba27
Date: Fri, 09 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746821393
