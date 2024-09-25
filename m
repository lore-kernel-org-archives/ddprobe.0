Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CAC127E01
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727289954; cv=none; b=AA4AhrUCYnPkebnEsYrAYya9dUkvk5Q6mWGvIYmPukY6aItDchKVMTItWGEmgku0WEH9tDEwtCyLOsdUpiA4mEg5x8Q6WF7byJM2HUCQpHHDeAUX2iGmm99exTZ0UuS74gTUc3LkQHfxm4aOz6+ac4RS/uJVy86O96cBVe6u0YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727289954; c=relaxed/simple;
	bh=dM1nid/oub9oY4aX5Dn2BbigmwxOQH3x2Vdj2IehkzI=;
	h=To:Subject:From:Message-Id:Date; b=mQXZB7lAfX2oSO5yInaeXEOw6E18wjjNufL9Lnvuri7ixSxBBGilMFJlBkuX8ZcHy8Ccpb7kbfpStcCtCrWCxzcebFCiSwNKrFz+2deaaXBBofq+fMhZ6gY0I35CWsNRQawRcDMpiQf+5SDfZ2Xsprd9gM3ZMOyXiTUc2TOLf90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR2aWaL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR2aWaL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55E2C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727289953;
	bh=dM1nid/oub9oY4aX5Dn2BbigmwxOQH3x2Vdj2IehkzI=;
	h=To:Subject:From:Date:From;
	b=dR2aWaL6WSA4EIjxL02d79XWGlTe6YUqDKngAvD8veyQwSsS1PdMn0dWHEly5XGZX
	 ibvNx5Y7sl20R7L96KyOu0RyVKPEabzEe7zD01P8xEkL6si8Ly//1UAl6Udn1npUkc
	 k4ZKNe+w7aGe0KAVhzDOZG5FhC5cfskKKtPI+9f8kO2D63L4KWQLXLOO5Syhhc0ppd
	 wAxQDS/IteAxh9+mn3JoewpC+SI3X/bR+ORlWJ6U8JNB0TqvH7HG7QJ38jtj+wm3XH
	 CdVe5hYuAawoYiih6G06JnM13+B4miAshcniPw/VSUtNrJI3U+UN85FPu6SC81oy3p
	 HeM6Qaf+kIzRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FCCCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728995360.30109.8575494080397596928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f45808b60b7dc418841de03742ed3f0b71b86ed478143c693fc4fb375b88d
Date: Wed, 25 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727289953
