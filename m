Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2407C1DB546
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754542794; cv=none; b=aacsrKKJQ8P+OoRoJEchsZ2wcB2WUIGEjPeG6vEUFX9bYtqB0Ev8WAlCkRUQ1uM6KWlZHsx9iLlz3Uv3M0hA9c80paBPrcpr00yx0UugpiQz2kAUggL2RlQnmKYEn0p4KzsZpsAU4/F0Hxq9fS7trriwE1XRGeT8HTgPsrl7rE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754542794; c=relaxed/simple;
	bh=KrYRD29kNIfBs049nPsdLMrzkZnZxRw+kLkt8+NfFps=;
	h=To:Subject:From:Message-Id:Date; b=jqDZoSr0d0Shx2ZaN2PoD/+tRfxNbMD9qYPJqGXoXVr8IGKfJWVwj0lElhpJ9PN6QO8kpXiCbCeA6VF9D6Dqk0A1Yu7xiRV9TmDXb4QPPcTrczOYVi471IIM1P7qLmd1V2SFfcqunBJ5i8gffxr3j32QIM0uLbCw91gA1YNqEts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLzLPOXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLzLPOXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0039C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754542793;
	bh=KrYRD29kNIfBs049nPsdLMrzkZnZxRw+kLkt8+NfFps=;
	h=To:Subject:From:Date:From;
	b=vLzLPOXZsaYHfESXzF79dDufuk7W0GrWbIiN9mpCoBTJP3GUvtcJ8caPmbjzEuiAC
	 1hostsnzx8pZ4Paf4zisyyBWmGGExceduMPIYt8vNJjQSWk2f/sFgYSdClxfmV1Zre
	 zzOeLnQCvkbwHiI+//0mK2NtgwtPfaKQWyGj2u2XonVBvm2LZ/JRk5shi6AVIPD86x
	 R4LIlSR9UESuFmA3d0T0PgJrS0i96n5Jl4KosivT8WEi9tF2H7W3onHLzzUmTSMH29
	 kz1WRAvXWfCiRenEKvFwKzph8OKdawQLc6fDRQ2Hezc1d8njJOeV3CiQ/7Xi5MPoUK
	 BYxk2o3HHX8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E007C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454279357.6166.4942558106592909159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d9dfe46c6fd894fbbcf6af39a3df8a700756959eae87d81fb4b08ea55029ea
Date: Thu, 07 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754542793
