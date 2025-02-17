Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5961E5C603
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739764734; cv=none; b=JfKP4WoSGncj6Tjxm3LcqX3AakKWOoYKY0GeyUecSTTdqyb9pxZ2qwVRCZ9pJlDdbKCcgufMMw0DzzqPdtqOX3yDYQiz+RjfERn4ksyc5c1Wq0L/HZGjG+k9SqiGaFnGlO+GzEIzCHxbwtgB+cWQHg4m/Yxj+4D8NqqFjrqDV2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739764734; c=relaxed/simple;
	bh=MqWFeWGmXh0wXKAC/zE15VDVDEDIouXQVUELuu/p0Yc=;
	h=To:Subject:From:Message-Id:Date; b=OQP/A9GPhobxVSRZ/x1MWz43oUzfG8aZfCb5ZBAMOV4ucKTC4tZmdgSDCs9ujEZU4wlJIN9VZKNm5P2MKREhXCnf/jtLebYT7ZPWN7cC12CGTq8X42SRTTYg+LkyN5ff6KA0r17DrkTROwXYw4zbotGf5P1GYTPLdgpS+ReV04o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPcW+g32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPcW+g32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8776C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739764733;
	bh=MqWFeWGmXh0wXKAC/zE15VDVDEDIouXQVUELuu/p0Yc=;
	h=To:Subject:From:Date:From;
	b=dPcW+g32XtuHT0jlR5YtY9FAIvrekfLIjsy6HmRddvLxenabPbGX8jzUkN+NlEH6l
	 eJNNFReKxZYMGdY1KRaJdJWTaA2/LIpNV9XWtCqtNN0o5D9i01jipNbPMFsO/4UFML
	 Mn5DCpEhls11SGkZ/+Egc5bxes2uMFK6P5zd7QBI2xWnjv8FOtxz+EJaJHwDp7WMgG
	 TbwoH7bPJREFNO+Lx10y7exRS/qO1RdFhDYmNaPMkJC4pFzwYNLu1HrOCm1oESDNE5
	 z3/F7NgdVkiERvSXa2f1/UCRaGMZfbJTm1u6ACurBMnEC9VXlV42VECrWaZDb1w/TH
	 zEZhBRrydtiww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6239C021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173976473364.10832.3818988116752001786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db603c66110e72501032e4ee37f6aeeb59a2d925a629bf79b9cd58c592200b7
Date: Mon, 17 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739764733
