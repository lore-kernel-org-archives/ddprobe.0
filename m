Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407F0136E
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735616754; cv=none; b=aCwOZhLwTn+7JgH2gBAvlbx8Vd0d/G72/HP+ZIAYTiSO9NcFysUA2AecQ2h4sX3PUFHIy3orBEUyp/1MARxku7Cg62YHgtPiNiTlgdGs9ETwT13uz+UxZjyla0DJC0ECoPVIgBlVbmiPThUwAODhN7ifs9TSBC88JFQFRj/RHYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735616754; c=relaxed/simple;
	bh=RZWnE8SckyU8//4BPmgmhBg8oB6MtQuYb6kEnZwr39I=;
	h=To:Subject:From:Message-Id:Date; b=aNDc4lT8wdwFrIRG7WZqEzH24YW37ZQuBUm4u9LzktNukSLXmJGtE5w2Pn0r3nt3tUv8HCdiEGJz1Ly6HrN5YLUfEPpTBDiODqRooNyux4VZMfvOnPPcua8V/jzJRdySeULfyd3+7ePWfPN4qTkTYFvLMsOW/1260GnMkglHyQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrdoeBjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrdoeBjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA62C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735616753;
	bh=RZWnE8SckyU8//4BPmgmhBg8oB6MtQuYb6kEnZwr39I=;
	h=To:Subject:From:Date:From;
	b=BrdoeBjzx+RW78V8Jxtpr2qWePHZrjkVoWXvyT/MG/qe5B/LVOSlG7PcHTUuoEtie
	 SCIAjD21HeU/KHto8J9oT5TwZ+++z+TtXohMIHhRAkL6OuQH+iJ77/vyQbsmwOezRL
	 djG16D0ZCP0KLsYRd0xhCSxLn9mWmQc0MHH3swIO6T1VX4DDPqBEvw6qA6+XtwZ9+U
	 MWIcg1WxO0wMqKnuBWp1RHFuOzxEcx1M5PB3QaJANvy/SZuc5/TYongfG/H+hJEKcE
	 /jsQ7em2kO2DGDjEb6Of/yTYUQFrgPIK5VgH/nYVN+MX98NMXIwYA6rNZnnOK0/DyF
	 nSWG/IWvY+GqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97491E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173561675361.20070.11414793323748762350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b29d4050f9be1513a8966c28b40d78ba58858d2612504234a087f703f726228
Date: Tue, 31 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735616753
