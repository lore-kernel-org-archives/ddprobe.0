Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCE333B6CC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778608834; cv=none; b=kZAazpSt56eXQc2MgNzS/Zlia9DsO4kuVGvzq1r+pC+Ok5W3n2et/nY9KqbtZsd0WjXPM4/TSaT8UeoUWeiOjvpSh7jFm9xpU9SjznXWYDsdDjDUmgt6TJlbhsmiaaSfXBjV80G8bLRrv74eP+H9B8YmZf++fezqH8pNvjdI/r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778608834; c=relaxed/simple;
	bh=BjyhfafSpEK1YUVVgda6Q1rtpsN+BoJz68ISKDxg74g=;
	h=To:Subject:From:Message-Id:Date; b=NRisAZHBEhiy0saAapmEqILG6tOXyJH/hnwbs+u0nso79DJYUmqab4XKisnt/bgtPxaJXIXGKGTdAVDToTC01DKnaogk/pTdoV+t5LRvWhe/YyTT2p6PL3pKvfE6WjINeTFtS6TTuCwj0INL4ul9kfBEAOYdyBqvfUArxp7p9k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVmhGZ1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVmhGZ1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8CDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778608833;
	bh=BjyhfafSpEK1YUVVgda6Q1rtpsN+BoJz68ISKDxg74g=;
	h=To:Subject:From:Date:From;
	b=FVmhGZ1wd5OGCNa5nP3hFk/+XZp+dEUWUSV1EouHlD5wTwbDRRnyh9LP3G0BUMqfX
	 M4U4l+uuHYVUmWlUEQStkeuaEihTfrre5PBkbDa19IFrShjopSHBsRZsnqUT2SAFSw
	 mwGBrfJXG0LTKIYpqob0tP2WKR47F4R0lnEkw7mIf8BtNDJKtQACqfXeJzy36uUn1b
	 Zdhzq4LkreTCNOq8IptaHB3XPbqvYv5k8NwAx/kuSbRtVqXgrZfhTCs+vFbIEbhSYb
	 Xk70BFBoBaxyGyh4GntimqQKk6WWEa3le2JLvMz/JTOc7TnmzA7YlHRrGH9hulq7Bv
	 tgcDSznLDBKWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A8CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860883368.9806.5278512213745036924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0efd82400665cc16ac5e0634edb13bd1becebb8124774c6dfad30b94618cef
Date: Tue, 12 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778608833
