Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284D24400
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746157195; cv=none; b=hup9WfJwNsZQ1JVw+6ab5APemxr3b2CwAmZKyUbhOWF2sg/kM+FAbqhKK4BhVL2nntsewnXvdsakTjDIVr3LsZSJ04zn7rUgiXez2wt1IRF5EE/vYZuV7GhfoiPgmPg14u8R6dXB+VP8vJVTUZSCj7xWPmQ2hJQ/yy1aj0GUaK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746157195; c=relaxed/simple;
	bh=9wV2PicGzAoiqa5TSmvCbvopEWlMti0875kuTyEVDkU=;
	h=To:Subject:From:Message-Id:Date; b=Zc0j5wLYbIfjRhMpzKIMGKTy4EDKt2x/Av3e/CnKDlfaQYRL9TQQp2YcEirO5rPxB68PtErL8lGbPFfcr6+ngrjIak9c8xIkf5FDevpkkSZ+ft7IY5zYeDiuixP02KCu09wr9qxhrhaiKktiOlU9fxJsJHc0Jdo5m81/tJxvWkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWFCreWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWFCreWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DBC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746157193;
	bh=9wV2PicGzAoiqa5TSmvCbvopEWlMti0875kuTyEVDkU=;
	h=To:Subject:From:Date:From;
	b=WWFCreWWDVvkziXfCWD7umY8ydeefagdJ3XnSFMle5uwrSP2wzp22sKD6zCAv/wCR
	 ecKwHF/+0VqdetfgCpfOfCX/eROb8E1gha4qtX1yCM/egIoN63q2VwJ0xeQ8faLrW/
	 RCy9YOzcsYU/jy8OuKOssGLCajLla+Zj0gGLs56OtvOI3K91zZk/+H0Mx9Eq4lJOqR
	 5Hbu8rnGpXQOvbE7k8vWves6UwGjs5Vy1Xqyx76AsqZyGPOUyJU6dTXTfRS7JQVexl
	 3fLSr1dEjV3GqF+FVdcymEgMT9e/lKH/cA9nGZdynBMlrg7CMgPx84l7+DdAv1LkhP
	 b3KXH3jRRCuWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B3C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615719357.17009.18099792197759960733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd878a590e7995a8f1941506f0c05d40cc74c431289527b04dca6349d459117
Date: Fri, 02 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746157193
