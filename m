Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FA73C9EE1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773224694; cv=none; b=af5QDsa2dHHEZnxy7uQdPj21KZpMOP6hyL71tbFkx3IsnmYXKl6HqmfvydWd+x/yBJgT6bZECfzwvwVHWyz9fp/+fWFh17kYKKIpbIBjWC/hyuciHIoDdWivYVvaLUMjaw6UhPDXVULm4+ZOyQlDy5wXwtoQgtSSPDmz2qqACGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773224694; c=relaxed/simple;
	bh=Stj5KKvRQhmplJV9inka+4LRwSZTNi2KoTC8M4KcGrs=;
	h=To:Subject:From:Message-Id:Date; b=EKBlSbcJDIgjd3Pkw1cg8ef1WVDUb9R/gf/9jxMBfuW3bAItfFVWLpTTu9rU32Ufd8wV4JvUxoHjB0zWYQmjrMa4UBnC6Hli5ydwoJNC3jwYpuERc2CemEvpWusLgkic0KSLq3A+xhJbr8MQvKUxKJsg8kkVy60eyN9iJTBkZRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqpxTiVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqpxTiVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0543C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773224693;
	bh=Stj5KKvRQhmplJV9inka+4LRwSZTNi2KoTC8M4KcGrs=;
	h=To:Subject:From:Date:From;
	b=RqpxTiVhC6zc2gSR6Dw7g0FZBmJPuJJCJY7QPV+AK0/hwVdbSv+iqjIfsyhKwhL97
	 HKTqcMWvnYGgwnjoNey6G86HxNIsN4dGYhIJtJWgSM3bKDJ3zfngA9MLU2QzVZdEmg
	 TCszgMgRS1cCfJnNN/ss8WLP8rgS5aCjSkIGDnFh3OASh08rSzyw3PwD2qh3RvXkOy
	 Q5FGJks2D6WjaGso6GQdioFOm/NWxho2npGVXlVQeeVm8dqGtJSsmpk/N5Q0Po9Rhm
	 t+LevwGEhKqjsGAmBdepGvJGyMSx8c+n2l+cAcTiRFLwJhjX7c9yM/Fv/CD5uAT2Vq
	 mZsfvh2vphroA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92713104BECF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322469359.3513.12786894240934994202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49408f508b1605af520fb8f3766153da473cc2e6601c798eb3eb87cefd060679
Date: Wed, 11 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773224693
