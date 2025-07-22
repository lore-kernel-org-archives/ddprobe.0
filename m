Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30812E9EA4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753186794; cv=none; b=Er/jQhwf4kyxUDSpgUeuhDGy8JhO3BS4fAu3xGL4eFOo42k7BuPl7TDXKm2/3cV7l6Pta+ltBs6xkQO4Kdfn1JdbvgPd37gJi6Erck+09G+c6KU8wqb1poO98YTGvGbDLMbaop8oPnrJmS6fydTZbR+cf7hHP2dN2AAqMKL1+Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753186794; c=relaxed/simple;
	bh=GpBzEzxmletyqndoppbyLpI3/4e9ZRSx8ZN17bHYEbk=;
	h=To:Subject:From:Message-Id:Date; b=XdtZafhwgyNpmIN0qNWi06W/P8Xoxi5Bkqf+ZeXbX9KBp9azJ9UVaHhrGHxxZ3A3x6Y/eylMKdJ6WbBa9iTgExl3lFLrFZRm19QxdL7mxRSKSp2mWQLUodr5APGqyUg7lMtGXrIYOs9Bax5O1N/JQiLxMpr2G8nQeoWoFzEE0ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIOcOK5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIOcOK5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0496C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753186793;
	bh=GpBzEzxmletyqndoppbyLpI3/4e9ZRSx8ZN17bHYEbk=;
	h=To:Subject:From:Date:From;
	b=PIOcOK5hoyOMKTzKBmSRL5d95Mr3d8NkA26PyC8CkTwIkVCwmAW9v3D9+DsnglAOc
	 eD/OexFmxGgm5+fPXQ2LvaCZsGPDg84i1LPsw944jrZGvULmvKZrRKnn0nw1Z6PiiH
	 AguIsMsWaWw+4UfB+VAP3DtF0F+pXm8aIreIEQPCfxzSwYEG81cwMOVG8gxlEYdxiO
	 Y0kByJClDrkn5UCIMqkkoq3NxvBACNaCn9qL/9SjAwfhKtwVP8TFmn9C4c0VdEcRvW
	 jlJCpvaL8HfZfqmUzY5pBNKsr0hgoa1I+JckqnLhoh1VEou6syoMVa8BNqi5XGFALL
	 9r60CZhyR6jhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035AC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318679358.6304.824612464963912778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47dc13fb4175cdc64d908678ebc4d941604203543bbd006b5e7cf4ad54c227f
Date: Tue, 22 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753186793
