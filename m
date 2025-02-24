Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB082BD1B
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740360534; cv=none; b=R3cTck/+B6w4+Ibky95yQyZcYhWyO5tZsWO0ID6YQCbOHq/hJYLyu9SqZ67E1PbN3SYYwqxTpm6OpyrMhztDEFa0/wasVH/oMqdAcHRmyqcJHiUXt1qoX5upJ2z4SJch1oOBH+TS3iWDTFHdj1VPfxDj8IHIlaqtFmHgGopWzZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740360534; c=relaxed/simple;
	bh=Dc6FPndLU9lXKuwM7xc+1Kd12idShLVczCettgf4oY8=;
	h=To:Subject:From:Message-Id:Date; b=MN+U04GtoCoQ9BCIKoI0JV5jyalVneLGA/n2mAuD/yOUJirORgpAIj1D8sHTHy4umB3L5xwcdOLrU7tZzWrOFSecDWURmVP6o8KNHdx4jEnmoyb9x037uKAqIuARE3t7XzE0/2pQ7FwTPKrBDuuOi8aFkXkghMSDNHgEAI/kTqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH4ytNla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH4ytNla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B7CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740360533;
	bh=Dc6FPndLU9lXKuwM7xc+1Kd12idShLVczCettgf4oY8=;
	h=To:Subject:From:Date:From;
	b=eH4ytNlaU6EwvCblBwuIcgHOaKcBu/SkowvYOxfyFozxcTqEOSSidP2DDiw8L8LYc
	 uwkO3wmskJfAAWp2R7n7gnHHhKGrVCru26uGOT77svarczlIS8VmQMpFCRFbGDJNQy
	 oMkOtQT/pNgBSppkdlRgRkTUGkZP4bJhoCzOtP5UtjailYQ7LPz6MyH1E1vZ4ld3us
	 j95FtvFKjuFRgIgUy0mUlfqGtcNQqPwODDctcok71IApdqFMpYDomtWRFLr+fJM9Xb
	 u4K63ClyDy0XhbvQVD8kHGSYzUCx0dXKKvPxMNnX53DyVH0Z2q1FnlV9VZcnFCeEqh
	 1lNzTf3tGEtWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F97C021B2
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174036053359.15159.18145181026877043981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b627e15242ae7e026266208c2af92bf770438cfa52e9aa73ef33725f59cc0ec
Date: Mon, 24 Feb 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740360533
