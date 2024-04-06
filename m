Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E8E555
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712446697; cv=none; b=iv4HFnYwALOm1PvbLZRGF25RwrMDDDkxLBsVNkAgfwbcaTUpEYmw0voGB7eCLCLkNnypracRUN/du94NrBr5BzYtsNybB7JWcWnihqR47te3v2nVgmgxeJxR8Acq1y4CoVqVV2FfClEF9ZLDDHoj5Qv+DAKpNM20YieU7qoxqP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712446697; c=relaxed/simple;
	bh=1IaVhwMOYg2B2F9mOCarD5AW7v2DxFfTdMBsAOV3/bA=;
	h=To:Subject:From:Message-Id:Date; b=Jz6M7nHkGKiWL3j0oJ5bbiFGPTcdl+wjl+02mvasT+MpMlDl/mTt120FcNRIyXfsqxFdvjqa/VbDuncCLxa8vbjyg5VLVOOtVKbi3JLszSjMzcTtH2rkB7R82QXBb1c71A9mZQxUJ0MmgP738UsOUEVyEdoNLU8PdVOd0Vt+se0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru5v+jNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru5v+jNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF39C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712446696;
	bh=1IaVhwMOYg2B2F9mOCarD5AW7v2DxFfTdMBsAOV3/bA=;
	h=To:Subject:From:Date:From;
	b=ru5v+jNp/UsZyYcFuRLGkPJ7I4CPa+dxgMmvbyriXrY1w7HnPBCIoKSUbJJeCqL3j
	 j+LinNiaFgVrKc1t4gA0nzaeNBmZcR7muTrAPQy6XPK/J5NFRw4xTk6B65rolwTSQt
	 V+lMQMnR9C2408jsTVRIOYF+v5FkOYX56NrlZ/4HamE6MtemNF/pQLVc7rE8OyStE9
	 xrrqrnSEH6IjeDLUHIky+S/QJCqnFvPBwSW7GoKV9FKwNmLuwGOz2S4RBF0thFd1As
	 KfxQfxWXVMAbwkeQX/79n1iPWLWiXou0c5nqBZ2qQDcx1ZxT2YQHXFsl2Jrs3hIREt
	 piJLbm5lDaQjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4A7CD1292
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244669637.4668.7315079225116261300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbea80f1f845d6215fda241d5dfdd6469ebf71a03bf15e8d4d485f26b7854428
Date: Sat, 06 Apr 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712446696
