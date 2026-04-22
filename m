Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531BE1E5724
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776856056; cv=none; b=Z6T3PyevymYA7XSn0YADs4h8PSSzPyhzLEw4faF4zyabuJ2HAjTvWZwB9oVOy9oLPLyXAfcGlSpshHnOrf+bCYFNpI/1YaujvOB7yxkSzy4ujhP6XSUIGgeWvYWvCxtSGRDllNRuwbnTICDDDxd7v8vUSL5/r72eEA/2cT0xh3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776856056; c=relaxed/simple;
	bh=mI3W8JfrzA5N3VNSg3zb5MMc0NlzkYXj44ib4EERn4k=;
	h=To:Subject:From:Message-Id:Date; b=iLWm5CSDcOOtiNhGLsXyMsZ17v5UfyynChBBSsp8j1ckRPANXLxJWSZSH47qzYCLbxVgqRizQv8aP6Slxgw0zlb/V9GYbwinJaiUdwznEgFN3lMUGkyqXYzJyXjYeP1o/yrEzo5mjrO05HlH00sGp3NkbHSrBj4UILwMVv7vA0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz/y8IxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz/y8IxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95B3C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776856053;
	bh=mI3W8JfrzA5N3VNSg3zb5MMc0NlzkYXj44ib4EERn4k=;
	h=To:Subject:From:Date:From;
	b=bz/y8IxBTZLs3Fdf84/inSGDMx9kHEWAM+TFU0cjc/bUxOVLupb2rT8pC9CSB+kE5
	 MS6Lx+rw7X4xLOWJTjxzQb1/RvyqsKYwWevejx+jqA/e9nRV8By1tMd5guUWM1LB8C
	 LGjgK1hcXc6wL3/ke/MOurczZHntopow+x29f8NI5iD/FsM8QED6SxhYJ7U9KM+mz/
	 nNRdLdi5hU66H6iaPFqTXr0IP+2xSb6OkEvpE22cxMMpso6rKBlstbjOHUkxMN29DJ
	 lRu1iNQydXkSNgPbTCsnWDPyjMAU5pzGNhCfoiMAbLjp+mHB7F9gVQkQH1QfgiaET1
	 qGV+HX7ez2+/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92CBF9B61C
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685605368.21614.4972743429115366944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fccbe9fb9cfc6c5e51e46b26d3d760b23cf22b4ea31c27d1f210e319e4ad75f
Date: Wed, 22 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776856053
