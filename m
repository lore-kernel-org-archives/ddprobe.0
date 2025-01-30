Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE9C2F30
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738274755; cv=none; b=Mz6cguyGWgP1t/9reZoaqIZ4EKNStWYyHyQ9HOxECNe31IKTndRMiWdpuuRUaN+CbrBg9s/5jLtXsgiRBDjnkEmVc5Fum0n4guxOPZxMpu7WZ6SEb/Aj/Ny7huTlziSL1ZioTvv7bZjdIvj1+/oLfWnVEtn7DxtUYByEgRVuHAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738274755; c=relaxed/simple;
	bh=vEZsDJIgQlySVGhm/c9FQViSRPSjIFJAxE/vFyH9Zcw=;
	h=To:Subject:From:Message-Id:Date; b=HhhjVhVQ/Sadj66QQELTRWpF59eKo9SbdrkIv9xpNlO5DzsfPsN+bl/vWzY43Bxc+rP/5axoekeVcI1HG5LtyPeruUzxs2bIcofjuubWW3KDcWPRhvIEK+VesQ92ofrCwU3PvSwZqJ49S1TGqOglujRFCHm2imk5Qpgeghf0jMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVMSkoLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVMSkoLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4051C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738274753;
	bh=vEZsDJIgQlySVGhm/c9FQViSRPSjIFJAxE/vFyH9Zcw=;
	h=To:Subject:From:Date:From;
	b=VVMSkoLoc40S1yKDDvTyC7saBZ5iBjnxKsNd1jNFz5cTH2REhaJ1099rMoFwg+c8Q
	 8LyFwIzh3A6S9aV7GLwuU1nR1ev4qYrwbW0L/csLq1Sg/yUgipa/iDItXq2/7pg4Yd
	 RAc3Xdy/g+rNdmnATR2RLcLQUxSKePfQnNaqdrrrIQ7sH/IoPGXvopMce3O6OatgQ4
	 78Y/9Oru2S7uSr5hg3P1Z6CuDYxXXmvEmLuBkQxpU4DU03NoVxkyyI+wP83dV0J48w
	 nQJNK+rtqMdslCjJrrRimuEHHeZ6arrlvQT8e71/238xeJYS6Y/CkKkfLSZ9Fz+xRT
	 41IIofYhRwp8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCECC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827475359.11604.10133142607633199139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c6d70a514c259a3f2f1994752a64e408b5e688e200304e4e691a4b93f1babf
Date: Thu, 30 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738274753
