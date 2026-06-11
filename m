Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCA4306746
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781151994; cv=none; b=G5t9GZp/L30k1/hMtRjx+ssii6ayL79hAwqfm/Qyw6bW6hmgIQiwY9LIBgmZeqjnNiQMi6Y4L7+u32Nv8PxXm1dMrf4GgaJEbKbYbF4cFBd9N586Jyc2HV9f8Zd8hRRWDzmnZ5USiJwTLpVf0JGIsRghaFlXipJ5ZZCM+xUzyjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781151994; c=relaxed/simple;
	bh=x/kj1mUb0kEg46D3Jb9uWHPRN5MCHbBbuxRLSjLpvgE=;
	h=To:Subject:From:Message-Id:Date; b=WZVNTW1LsTupNhS9m7v2XZWLSe43k9uZOkZYtDbbm5s35XeQYy0ortKtIS9WJPxppZaGqZqqf69lWcz73O2+pBpigD0myXUWYVv+hy9EMKo8nae6j9b3IxJJodbNJEizd1mxhA+6ld9sX0TyQoYRBSmpcqehF93gzq0ZwKHuLhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHtLUYR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHtLUYR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC443C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781151993;
	bh=x/kj1mUb0kEg46D3Jb9uWHPRN5MCHbBbuxRLSjLpvgE=;
	h=To:Subject:From:Date:From;
	b=GHtLUYR20E4keJ/3hmRrrLBSJu4YXsVh87N/HMww7oaHwmi8I+aP/IJSMr5OB4mIf
	 XEPvxpmQP9adMHxQXr2/BOGzB2lfxsQpuxZD9PfzkxWLrW2eeen0KyJAgA4bPFSPUa
	 bXYgxn3s6oRDHDb4sxobmqCmqLGVzM82i+jECNJ5cHOjOOpnrTV6O339/Nil5Qxpzu
	 mFDS5LLFe/jvmW9RKW8RT9Imww6GODSomBP3oHC3IsOZfbNRb5ighn7fat1eMwHy20
	 lJwDAKcRu3X07wgizdP7PnQ1O2cPrpQWae0L1ddTYmhgYoY3ZTZazm0J6EPWkkZsVc
	 xxPaGc+Z7VbKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8F5CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115199369.14113.8699844381576799878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02f0221c15adec3f951c5620d77aec17bffb78382123cc936e4c6f53520e400
Date: Thu, 11 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781151993
