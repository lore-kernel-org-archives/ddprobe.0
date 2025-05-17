Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CAC1EA90
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747496994; cv=none; b=FTSdK0fwHjj5WOdyKpm0qsbb2gpP5exIR3rPlGZYKXx/vaDJemIdaYZyPbdy4U8BxLrZBn+0ec4WV2RtyD90+WBrLkbk9Jfx2cQLTOgK4H7SleTto0/n9xGLaJA+PNN1a08Vglr0Chg6ldLOlRnZ40j0Q0SkEfNIbCn3Z/W3pcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747496994; c=relaxed/simple;
	bh=Vckj6rFUz3rMlvRTRrxbwbYFU3fqap4g/jaoUertif0=;
	h=To:Subject:From:Message-Id:Date; b=FqwDhxqpZPchou12W+JoaZURkC5IL71S1QoDOYmjwmOatRmyAJwAc/6YOjU1eIDIc9sj3N90Yfs/GW7yS3eZ98YOPr4sCxuMBeUcNYv8KT7RmhgaTWp3g+apmzfzaOvFGKbElYlNs3pSWOLRpRlFPKI0RTJr/HE+NvjbnQnCcLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAFQq6aQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAFQq6aQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2719C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747496993;
	bh=Vckj6rFUz3rMlvRTRrxbwbYFU3fqap4g/jaoUertif0=;
	h=To:Subject:From:Date:From;
	b=HAFQq6aQdrtPpvF0L9V1ou2Gcj/GixhFy3Uq26TXKyihLWI5nIhprIKTyzBEii2qL
	 mpOH6NjYwPxAqcgOzH+ZtcAWcW5KhsK4E5DtaMoqr+vLBh0oT2/Plq8CkskPjwhXxT
	 amk0VNtybiJoSwHFmfOMMlNNdkFNAvD7/o0at13jTWkamL5l37HCIc9t3IRgu0Q6fj
	 /7z+Fs6k3ao1Q8OwUvwx6TLTGWsVcSPVZ8EADrhMIbJAinjvk5FAcm/76mqIlEa7Gi
	 gczDyot55WsluHJ0vZW41GKGh/6YOljV5N+gb64suguUmQB4BtzJ1yM7eSdezerdwN
	 /F8ixIi47LZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169CC3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749699358.20084.17833035615779880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4850625b85fb0b68f1a76c6aadecce144d1421d1da9b72213fc6d394ba6f23f7
Date: Sat, 17 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747496993
