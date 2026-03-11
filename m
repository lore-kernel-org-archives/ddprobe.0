Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BA92D9EED
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773190494; cv=none; b=mejCnMlb6RYcZVa8YtURnDe2g1qiV15OT8bIUp1Q8rczmQZHupKMNhxToEkBMbcNnTQlRXDjOQiwKkBoelv4CEruNf7tAOl4ZrnYm7R4811k44WT5fQ6swFwzrVp6TnMGP266WVbq441rAZLkXVVUbSfFDzx1iEvOuBwzUv/X8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773190494; c=relaxed/simple;
	bh=Fvvx/NWGCRleqL0mq28f9w6cFf7vWgfNIi0GIdz40cM=;
	h=To:Subject:From:Message-Id:Date; b=o+RPjqSTKsSYePVGkrzlMTYQ8+MhUNy5apuSs6lhFwexRpb+ztBudPglyxo/VtEBHiUlgz+PO5kekQW07Nqng7I3w3z19AFm7Ylod6ryO4m2YC/tQfNkj0bkjlC77rmGzO8hS4qs6UGP06ixpSYGBbZ26u1K40iOFOPdg5lctpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTPpxW+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTPpxW+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DBC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773190493;
	bh=Fvvx/NWGCRleqL0mq28f9w6cFf7vWgfNIi0GIdz40cM=;
	h=To:Subject:From:Date:From;
	b=tTPpxW+LKKfEPPVzPelWGg0AEfCsqKHztOWoa9vMGjReMOg2WRVsf4kOJzOQPpteh
	 wKPZnlJxunJkMFWAeZ91ZdlAsN3Ui/btygWxDAclCXELDVA/JcfLqhZeHwYKUl8vuc
	 Z7fwMJtChkLDWKccRLkOwKTehMM++9FOKIHWmwGyxu/0pjO6p4EXiYtLhgMJl/lbag
	 KNemfVo5N5Mp/0w8LdqoBoXASA52YlEO4/TvLkSM6FaUj/z0TLHNeuWWoCdG2fdeqj
	 FDYbECE7ayX1myVr4WMb/lm0t3i4W51dAE/rB+vvouXfLq1cCEgzZXssJKRE+v/tLS
	 TIaDMKkugsR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F4FD88D3
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319049358.7157.11139868700561212992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021611c92ca8fa472471574a19bb5038ee77d267885b685bdfc19047d2fb3eec
Date: Wed, 11 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773190493
