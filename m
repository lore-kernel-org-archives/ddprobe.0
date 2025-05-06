Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE322857D5
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746551394; cv=none; b=P9AnVTQZMxGLzH1HChja/OsG6E2C4a/n9QwbU0741E4+uJnd+wqGjFLJ+wmy6yzMUmaYQsjuEuMvYUd8SNUnIXxa6e8Ba6TZC9tyQZL7FiPhcLQpyqFhmjJRBalbh5sgLtBVLhhY63dc7sQx3qPHqfTSLdbjIgjgfNTbdpXPhW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746551394; c=relaxed/simple;
	bh=2LBnNxeYTopZEqalcyFHUaw2t6U5vBIz0J3EyuguDSA=;
	h=To:Subject:From:Message-Id:Date; b=rAfZMNbHxHGz346yAtsdD5TpbJuHHEhzDUoe3zbYBQ+s4THju+dkIBTxJZyoIc2EnkismUf5csZw/ZESKnJmeB18+x1G5T4XMNmAcxCVuuINDq49Jc7JctkUSqA0TUC9ZzYAEWQEkSwYYsQ8DyV3bXJXB9P5oTmf+7FQA/J9Yw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHFVGjc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHFVGjc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96925C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746551393;
	bh=2LBnNxeYTopZEqalcyFHUaw2t6U5vBIz0J3EyuguDSA=;
	h=To:Subject:From:Date:From;
	b=QHFVGjc+FT23CjS9ozCSn7dRxVXdZcCCpt1Ue+v87ISyTNY1OrfbHF7XEVZ7xITB5
	 +n5WLQJQAXbg7S7BU/R4hiGplJ8ph6g/bBeLrcsukA0Cw+VgHAZCrwBs3LpiC1N3wx
	 hfuSljOcY6JGJ/mV27A8jlzSBwSfR+r0FYSYAA5Q3ut96KMyyWy5NphjAixvECufu/
	 c2t8/WxvlTJYccr+MmOJEyfE3uvlzi2LV5QHzEi/UYMvBinxgr3JTWEnIN+7wSmmNH
	 hdBHH94SfInYUWMaXcC7Wx1W1pJw6x7wXJPFIXdAEOSk/hepvyOrIYQLFADF52azRr
	 xa0bY4CH073zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF23C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655139357.21917.6630390752588422217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae0c4d392094603bc1d0d4d7b190469cb391444ca8a1394a96659fad8d71707
Date: Tue, 06 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746551393
