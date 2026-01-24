Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A353EBF01
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769256834; cv=none; b=Qtm0ASupTBjOAE7HDzUOfY01d4hqxgA+dXhBCLz7gjLLEeTbMqU3tIO5vzwGkEvVuPJxpOLBPgWcTjdjpSEm5SzcgJoEpq7nwgpHrWz4iPn4wX8gqiw5l4fkY//RiNErMWFPPTCcV9VghJRo8gUjXxkXfEmShiHh5vzZvcYZtks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769256834; c=relaxed/simple;
	bh=t6EUvax+lfNFzK+Nrnn+pd/oPGUhzwKKsiEgvhaW45Y=;
	h=To:Subject:From:Message-Id:Date; b=NbaMfACkqL7YXQwj1jU8oOb+TMBmiOlN+ihb0XuOSXyv+oeRpOxcAwFTwg48C2kZfm5wz0vN9u+FDlLkozS1816RS9sdPS/j3VvbZrmjEAtRJa5+hCME8XhWGfXPP/ae7F3X1zWzsk/dW63tDzGYXV5Ub7Mr+04dHC1FNSpy/cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufRJK00L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufRJK00L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA088C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769256833;
	bh=t6EUvax+lfNFzK+Nrnn+pd/oPGUhzwKKsiEgvhaW45Y=;
	h=To:Subject:From:Date:From;
	b=ufRJK00LB8OvpDzUZ2071R06pObJ3EcUw/CQDmPwqxzfPhFr4UCYdy3SQfB3V0aZ7
	 99BLhVXKpZxZJDFKgt1TRnjLnEblZnV7TUPHeyDpTkdrot87gOF7oy1iXApdHOAf/b
	 FDhfF9SsR+ONJ3yjt3i1nE6MhpG+eJecTCs/3GviV+tt62jmSnCgzwvQv9Bnm9w29K
	 oqQKCBk6mKtFac/KUKRh5KJADQD/rBWFcABUbyTi/MhXh4Yg8swL8bKAtvX1oPyb5m
	 HctDPZ2zF2IZTj+elyGEVPqgeB/D0C/zWRH7ztjk3DMwhpexw0yklffQPzvELw6FcV
	 iw0LCGzgCL5LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F2D715C4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925683358.21439.15072398189139816442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a80f19698ce246afbc34027d274e6b6e950fc1847e507723ecf55d91ccabcfd
Date: Sat, 24 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769256833
