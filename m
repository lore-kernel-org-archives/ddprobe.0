Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FFC377542
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776961054; cv=none; b=ibqw89Qm2Pu+XlOfOEu8LAViuE4XzkSQibHE+c20chD+tio86/YZTbvzmc4PA8SMta/GoJtbByFa+/CDuEE3Txk7z3Lj0Ephbw9XjLwt/mO+7PyyBNNGRZbh5OJ+UzWjyMs4JgO9gHiJw5IC9eYnXlB+Br4S4aPYx/FnbAsCaEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776961054; c=relaxed/simple;
	bh=RHc+vSUCqoNyhWupQKf2hddC+Y7W+fbc6HVWkmILi9Q=;
	h=To:Subject:From:Message-Id:Date; b=WIfUgvgFrNVLdhyLBD30t7sQmqC+xAF5e3YjB7cFaXqwLsu5L6eCEqOvyKNaM/PWKTDkCV/eklm2y3eOu0fZoAgdK84Z6SRIj/mY59X3MpC4KODpFHKIhQbI10cUvBlxJlxdHBUXPmv300Ehfu45r0N2AwlnBtRQnfISeQNN9rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfdIHuwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfdIHuwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8173C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776961053;
	bh=RHc+vSUCqoNyhWupQKf2hddC+Y7W+fbc6HVWkmILi9Q=;
	h=To:Subject:From:Date:From;
	b=kfdIHuwgcxnDRcyjThmqdgETE4T/ROBOMMGLEMT5nB5ux1hFlmfAv99ef+scSTiyv
	 gjV5lw304khCaB89aaN5b7SIPVJy7Tmfbgc6ZxtdKHCwx0sYL45R1r+MXUkfI23K3R
	 CJEOJzA1ErraTAzYpBXdbbcadp3HwA2LqTPxJneQoZxPvlx2etms6L1DdTZmHvfcVg
	 ZnrTAQLQEUaCBbD3DSwIE7zZFm3pvsbDGHkyDCdV/ff6thc54PBiwDNaDxNPfAC2+U
	 sdUUdmNqyeiau60sfUWxrJboR/9RsP8dSPacRibC2bZLro+xdtFhh+9skPtx0hAiV1
	 Usvx4Lu7j5SZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F3FFDEE22
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696105368.11133.14560497625044347588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfa40e60c7acecb56f3d27fe6ec2e6a7492465ea6cb4339f3b8102a0d5f8a6d
Date: Thu, 23 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776961053
