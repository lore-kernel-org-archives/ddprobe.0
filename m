Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2647C33345A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773008694; cv=none; b=QpwVSjdnvVRNchehgEZ2i7pjdCXfQDmsEtF5+OYsZUxjtuoP3mEf3BO1PACBsiMtsAHhX/aShqVLHJR468iRG+rkqqlaRtKz3qx0uGTdGjIQQ9pFBoyo5/WajgphjFj966xoFGVNFqoXM6Og7lPmD6vP7HR14a4omuil6w9O5dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773008694; c=relaxed/simple;
	bh=HyU6ZjiQ2qkv3byr/+TJEq1NCTUOIi0g1rCZK9Ytlzs=;
	h=To:Subject:From:Message-Id:Date; b=JJNvizAYWkF2jpMb4h9QfLQ09L1hOH+uLRRuB0PaO2FMHhuvq4NrZTc3pJ4+GkWcZr6yBS0gN9xvhA7W7p72vLa1u3I1khmhPaoFQN5Vet4o++UmI+h04ZlMJ2XtZ0XuColPIYbrv3kOFiADRgA6VctYwHoiDGPZhUfNJuNtHng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KX1usPF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KX1usPF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4F2C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773008693;
	bh=HyU6ZjiQ2qkv3byr/+TJEq1NCTUOIi0g1rCZK9Ytlzs=;
	h=To:Subject:From:Date:From;
	b=KX1usPF3sd/Bgiptg583bAK4U02bExbaCME3BK5cyE+h1LCCgK6YMM+kR2Wk2Yn6Z
	 Xkj24+qwNeLEIC6pVx35lmWR4Pr+f/l8D7ScdnKJleUzpafuaDMA3S1uU+m5BepLEV
	 fMzyRe8Vo88t+aR0XJdbLYJPUuC74cqw6Lz6xztyW90e41E5xXYBkw9juRPzlzxK8N
	 4q5lamJFGSLB02MKKFWfPlmDSnLRKot7qfudgxvS3SNZJXLWeerR2TfGCpWflQ/WqD
	 sFhTlzJDbU4HWd4OjP6lFs6Kxi6kDlKfYCsLOqtFK952XvIyAt/GYx5qjp6keRx2PM
	 eyNCP4aaW+Cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F72EA852F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300869358.19576.3969218191875316488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e8761834bc6fdedff2dba628f35d441deb45bdd6f870d315919aadd36dc476
Date: Sun, 08 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773008693
