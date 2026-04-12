Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2940E5B1EB
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776034054; cv=none; b=Xfem0R76HXfMY0NYtIluqbEurDO88EJ3cS3L3+trnrBCaAI0GHfrUZnl+CNIkjGVc4pXyvQSiDTwadnOMGBl5LZxanzA0m3Z9zQntl9mRtPFMfMHwQNHIPhX8yRaM9s+wQ/BHAGDs05c6o890dtTqTG5k9vNBELmybw9obIwasE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776034054; c=relaxed/simple;
	bh=n9t9nwqOLG6udrNpCbLal5kb7NIvu7XIdPF/qReEouA=;
	h=To:Subject:From:Message-Id:Date; b=sB8RvpG9XIYcirMI1wJkC60WI5gOIhBpJZlXQOtDqu3rdpZeMDj/DX5Fh/YJPUgb7LuZA/KCUKYXwLKW4+5NABSAlr3fVw4sOIqGRDxdG25CS+hfLRdPvfLKUnFziJnQdXxDj54PC4eKsqjmlZzXK9HT5/J8VSU+Qz5yngr031Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmVOreNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmVOreNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE184C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776034053;
	bh=n9t9nwqOLG6udrNpCbLal5kb7NIvu7XIdPF/qReEouA=;
	h=To:Subject:From:Date:From;
	b=rmVOreNWfMn+4UNA+BVco8ZpquWvlf1yB1pw/tgcGj4ng1Ew0C4VHsNGND7Bb1QRQ
	 XadULDo9YDIHLYJv+rK6oGnFY94OtXkoOIfZ0qasSmTiq4U98WIsM8a2OaPtEK/bJn
	 Sb/CfHze0eNg+h8Ajuf1Px29H2oE3Gr5XHvnPOG/oJ7t8ufBzEMZV3Cf9fmPYOKVzW
	 HDl/FJ8bFwevBFDBnqMJQs9otSiWM5WexsftCujYlCCOgFvTyqQvvHIPOw+M3uotnW
	 LxKoHdvNjvmLUNdkAVRzaznkzahFLpGCJNWBVR+ngGmoO+9TSJSRh5wOnVeH3WluP9
	 mALbcqQvNXS8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDB5E93807
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603405368.25894.5008164675118381212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5fe7303140ef4e4a069413f619697647de0dfdb96f3530e7668ba15eabba9c
Date: Sun, 12 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776034053
