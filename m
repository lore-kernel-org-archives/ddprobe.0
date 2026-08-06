Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6303EC6B6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786047634; cv=none; b=oZZFpGvRyfgXJOEXWtKFfZbZNBVxERJtyYFkCe46dhboCTC4XCxg3h7WBPHuaMTcz0PtOHTZfmO19WrMT9mMpuILoqidOisnAaeEL/CSyrsW8BHoM8qyodNF6PBPWiEKDMu9D+6RZpg3Or9SLAbilAq5IQf0MXNY5RwsVtWK2Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786047634; c=relaxed/simple;
	bh=JJATuxM43OY5zznGCfM5NmnDvMnrtIJchXewdPLpaiQ=;
	h=To:Subject:From:Message-Id:Date; b=Hnyq9SmVThdvKAoSIbUzsrCdFEAmVNFt2zBaHul+Y9yo3BTQ3ux91mf/lRFfVdBH2EGK3ilzyF/3XtzlsfgnK6bPCamT2lx1eFI5YA9v6JaxTyofiTK28a1pxUz54oZ4yiJvNdA55BUWhCMuXxzHjSNlSlYiOeUTzvJUdLA8o+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9u3q1hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9u3q1hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC286C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786047633;
	bh=JJATuxM43OY5zznGCfM5NmnDvMnrtIJchXewdPLpaiQ=;
	h=To:Subject:From:Date:From;
	b=Z9u3q1hvRtreuV6za/DhET3ND1vWc3bbcmbFczD3embfx4Xjzxkve7j6ZqXHxpwjb
	 25J1B+UUhuggCohN3pNl8U5gLN+l9rgUoAEpcrtTgFyDsMqp162Azc8ESsML6I9SxX
	 1aoG5qzYX/e23k7QUQnBQ6UwawrknVrPyml7z/7ptTUT2Wn+2scqq7QNLg7R9McK4/
	 sOkuT8aIhKXl9J/bbrWGem7lkb/9QCHBYf/jYNOgrEGtyf+8MkMtZcMslaZxq9EYsS
	 VeGfvbNkdUBYMDxxKz55hYlFIcC8nX7N1lgAfQrOSY0S0P6XMLPKF2RD7Jj4vm4ZLv
	 Eyq2wozTbKrMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F4C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604763369.2328.14445999199578632045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6631bde549cb712a06e54c3d58b5a07bc5ad6741afe3a7a3d63e4ee47dcdd31
Date: Thu, 06 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786047633
