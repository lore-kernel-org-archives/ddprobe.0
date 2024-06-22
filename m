Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A06208CA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719087143; cv=none; b=XDdnDIn9oOeiAW5rGindSIKSK/0icj2+l7Q3vfSfhCdCdA3LEAk92wdCtMlKmQuNSs9RwckD4XreRqv1/QLsZRtAfg9OaOZdeTdDSMjy5SgfkSiMkF8cO4mxXTu7yrq/EwUX2fhlXIQk3uMJe3AJcec66VdoMUsFAkKWob8UvUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719087143; c=relaxed/simple;
	bh=tJlr/nS5RIye0X4twpraRRMzJLHqR0+gIA9GibHwjqw=;
	h=To:Subject:From:Message-Id:Date; b=sg3dhk9jZUnhYjyM6M7HNztROXWOkg9tRFAJPyykxRgw5SnptU2RjwgH8WDb/gMBPuT107hOocpd4NfokbXPO7gFIxDQpT2yfj8XmY/GnYeSCcDc/mIYewQMgnMErXiJzguhMQ10gXC9zyljIUDBwMm7k30Siq9CA5z/wkUPLUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et3R3dOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et3R3dOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38E1C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719087142;
	bh=tJlr/nS5RIye0X4twpraRRMzJLHqR0+gIA9GibHwjqw=;
	h=To:Subject:From:Date:From;
	b=Et3R3dOVsKzpmrmZHF7a7iL/WdUzKqqlHerPa4UgM8d0ZODLtSKnpGgBxzVzsej5Q
	 PxRpY+YrXA8+pTfVmDtqqGxebc1G7PNVKqmsxjNhANQLWaG0JVs6gSFy5w9mEKilSV
	 qN01mNd2MdIIhdt87rzzSxa1bzEeSfxDRiCzPNLg5tQdLMG/Cw05tfnUKzURryqiyI
	 QZgd+psR2TBpGtETgCVKRN1ZT7cKTkS/lDeaKTKS2ArF1hRi/k6v06JKnmZ0ZT0qQ+
	 Mvtg1Y7nDxc6uk1AOYbT8BOgswT0LWakwWVRhjWR046DJ4+rlsFdJn//XAngCUfvIn
	 80LsIP0nXc5CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB221C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908714280.439.11706174311075237157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2216151e551092e30787e26d9604e24cfc49cb06df639198e273d6692809d4
Date: Sat, 22 Jun 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719087142
