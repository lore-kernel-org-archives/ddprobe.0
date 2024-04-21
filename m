Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1AF18637
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713725423; cv=none; b=nEt3p0cYf3jT/pxD0zl76KnYsuyv7XWyfYp+E8+Ho0je1KFGxPd9AqCpnWfcTcn5VTk2sHOTD33lxR86ilrM7rmFcmb2ykftYkBiks6J8FJ81f+epWfvYIX5mGFNmkDIub55Py7ETuQeqfazfBq7XlfRy2P/KEhzkZafiQY72Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713725423; c=relaxed/simple;
	bh=d0Vp4l4kAMDQO19jjLunwxCsfB+FUVht50zEu8em4jU=;
	h=To:Subject:From:Message-Id:Date; b=aWHHwpDED8xe6vn9K1HqA8iwto+BUM9BC8DYKWy7fzueBbDT67BLRtFcMSNKq73FHbwI73tNApjAuQkxJkZvg4Uq/VIZI1ut0b/fEP1zZDhfO6fbE8WGfIDawXJ3DgYfcKRTVNr0VIYI5qEpNMUzOZyB8CQK77B+2RNIQ4eoNbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs+qSIUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs+qSIUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8947C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713725422;
	bh=d0Vp4l4kAMDQO19jjLunwxCsfB+FUVht50zEu8em4jU=;
	h=To:Subject:From:Date:From;
	b=qs+qSIUIKssLfhmHIBSRhWVqy2bKZr3ATf/SclnfEw+0pPUyhK6y7Bgy7vNJ1XIcu
	 VCZEgzvdM4uLXXNdLhVFBmSQnEMFKa2sMx7RXKlKaHlDohNxl9ksJBh1Z7iav2W4DM
	 rqzZtfXXJmVBc0Xf2BEu4auAFuI0Y1XEQiGXvzBkqjxilZAlPodDwBOw3+q1yynWbu
	 OEqA8yXPF/rXl8oka9jTLjoXV4dpa5eroh1867uF1aRQhuOzcxGn+bbIhUmHUkrh2l
	 WYFMfSBpGISydXHW8tHne/0yu6A0CzMde913SE2DhSvyPPzp9ii7oQrtDXcUpN74uK
	 TUn3ZGvIm9KJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE588C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372542276.3631.7728347786928088407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78467f4dade7532bc0434358c7a2080b1e56dce948bdab2037559550f0595e16
Date: Sun, 21 Apr 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713725422
