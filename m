Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBC92472B2
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746519594; cv=none; b=eiiZD/NnXddN7sxAvqZIPHzoeCW/FURe8rzMTmv6il6xCIRvTWReP1NNRtT37VSG+mqWL1beIwbksUwfnWQDfjVPzIMvO/lBF9lZHDLXQQJLiYIoA6W5IUwn4/qCLEP5xgM1ANLlm8URCcKZkFTA7r13F2FlhjYiAGAZjytUp58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746519594; c=relaxed/simple;
	bh=/ZLe9mYFROU/BN5I2NlvFUojegqcEKC5jjiE4XZ5l20=;
	h=To:Subject:From:Message-Id:Date; b=Aqc69/GQQUpRockkH1jEf4RupP7OXpTjFPVgxDYREgwWemWzlRRWqnks12YQcDekpGUpOe+i3qyck/LRbMycfHZMvxeIufQMFCx+ksNsR+B91cxsn9h7YDeMPOWMuj17S127HegViB/0HhhBDDrLMWuFZiKGhRp6L+hq5ZNqUOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgDCHSYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgDCHSYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2617C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746519593;
	bh=/ZLe9mYFROU/BN5I2NlvFUojegqcEKC5jjiE4XZ5l20=;
	h=To:Subject:From:Date:From;
	b=NgDCHSYJsETtq/7bhOHOyzFN8PYVpmPU5JzIlb3VVC/sDcW2Q2BvCzLKlplpIuLiA
	 23yQwqqaTCuRBRIA+DhSJzj32q3SIpOT0YbR6IrmNZXG155/4lbRla4hsWbfmZT60o
	 JFEmxb8WGJBraLDSzSn+86On1M3lnkXvVt+OTGm3dtmESuX+NHuxCoXH2ljrNImWqj
	 4b4PBPyy6u2EveLwb31tD7NfqqgRERZf5CQVumEfsNqE1AtJc1i5Y6RGtgPBftAVdo
	 YE/2Yt9hGR7uTLCuYc2V9pCjY5nNQDn/ci6tXJm8+Yk8OMbBSUlVMjirYQ1Zuvqw2Z
	 FdutSXVPf224w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE4C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651959357.11478.11283427276104133148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b36242b9e463b7c8dc78ac7c810ce4d18c603e3b39005543c62c7bc7e0d30f
Date: Tue, 06 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746519593
