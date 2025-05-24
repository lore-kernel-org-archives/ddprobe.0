Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B330225D7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748066394; cv=none; b=LGd/jOO6WkuOCPbmR/XHcMtJTsHnxwEjsfqsHAuzV2OBlUqzW8HkBsEOOUk8kcSftCkwccmilN4bcE9uCOdfnwKV0ufhJhB/hSeTjnDZttbjwxXgNdgPA+jbK/Z+xiAf2ZHryjKhdOQP2NvpqwOAEnwSYudWhmPWIxgXNGCFpFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748066394; c=relaxed/simple;
	bh=2Fb/1qqNQwPELiOti5Zy/o0J+5VUbgnJN+q01jumRN4=;
	h=To:Subject:From:Message-Id:Date; b=H1OKNU7aZDwog+qB6taBXunX8cnXneaZBSQQi0wk/jdOmSYfr8XKaQUHrFTEwwCLFvage0rNHaFV1VNAbwKhtbx8wG0rtwbV8Ckqb61T8XFKSUxG008zZx8322T/dlWXsoZzLxXhdNeu6l2vgaLeSqx+V4nan6QE+TpePeMjhpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DS0JSXJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DS0JSXJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D80C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748066393;
	bh=2Fb/1qqNQwPELiOti5Zy/o0J+5VUbgnJN+q01jumRN4=;
	h=To:Subject:From:Date:From;
	b=DS0JSXJ5E7YZeL8NsoQAUB6zgqPmNLiAZ2iYjLqLhFd7ctdtkxoq73vxgVZ2mr8vD
	 MUkgJUYZv2LuavRE93ChtCq0kv7SuV2330ahyRcA+aamF3N4siDMPxpQc8peK/YwPj
	 6XjucgRoVmD1NNNQfd7tZalCQy9vOJ7N/Opucm77wwnyZ7ohag6EBh0dD9P3WoWw4h
	 9Txz2QP+jMAvPl7KIrZps2K09fF30iEavIF4ZLRRSE2KcnkJMiDZHKUAMFW1qBYI0b
	 K/yGOOhiay2UjDHcP+XzB/IxxM+IvDJvP7UN6+Mbk6DqOcCNYR71abymoughh5SLFo
	 LZRCXGLIa3eKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF3C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806639357.26390.3111099510289116736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2468f616ef6e8e2c94e5d807093eb74b8213c1aa47bed084871f544048be788
Date: Sat, 24 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748066393
