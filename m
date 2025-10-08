Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6868F49
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759940994; cv=none; b=otCveEhQQ7k/Nio20H3BuPYxEY+lESwUdP/+aZNPlW8A/fsW8XZ21KgSALXiD2M5ClnrlcXfSxpaXkSo3pkOt3I09F5DCthP/HY7QCwsjPkc1EpcZe0+qPJi+AwDt08tDnbLCCyIHEQJj2BjMKrpP/ePpSZtGSUKN22REgim+CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759940994; c=relaxed/simple;
	bh=ZXr21BbO5FUF3VPJIhaHjfS7mvt3H8nGwtqRpuoRmZc=;
	h=To:Subject:From:Message-Id:Date; b=rqhUG5sA8MFde2hJUFt6Ku0gwzkj8KzS8OJHkQzwrFHIxNlS8nzWzxPaM3JVUGsx9n3pR0gwi+uIfU+bmV7Ephn6W2eWEwiDN8NBsid1NA9lt3sMpg63MSBK2gCH9GKFgtRKYMGcX4XPPYuAa271rPVyOpE1xJ/OG6HwULmHMPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPzloTCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPzloTCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB2BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759940993;
	bh=ZXr21BbO5FUF3VPJIhaHjfS7mvt3H8nGwtqRpuoRmZc=;
	h=To:Subject:From:Date:From;
	b=PPzloTCoU13Nyl3q7tqVDdM7YkfRDd5VHSNitYzEioKYygsk4eer4XAC27U3u4fY0
	 AJ0VBvWm1slh7BXp+mKZsC5UYwkm5QQkXrxssVu5rUP5nNNkaFYS/2zT94tEvUliu9
	 eFM5PXCX02Ymya2ncXE1x/8gJwohYMVEfs7U/4DYjgT2mAusZSiWnUzNivDfk6NpGY
	 N+kNi308gcOj7F6O442d3Jv73zBgvgfdUU5YJ0/GUHStbIqqytzHaPkMrB4oITf/vS
	 lFbCn8LxqRpcNyVzY/5Tf/AZjRijS0DNK159cEqrruFX7v/zqGC33IDvABVWxJ9MXx
	 bT0O9FjzTv1ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC5CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994099358.25349.8507224030928778101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02afffaafa9c2b5f9e9eb0681bc910683a18c77eda2fbeedbc108675adbd565
Date: Wed, 08 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759940993
