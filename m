Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3000E29C327
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764992574; cv=none; b=EtZQsZFMrQJ8DK1FPSIGBadsicrcWIphuHrNweqjjpgxIvCzbKXdg6VZ6ukNSxEsLqnGKElNhASQIlEmsLUptiivx4Qmn9qAa2AN3kTEqxdvMmWYe+zBg6YKOCmjyFcPAWtuO4MFE4LhbNkGiECLFHpjiO2HAq3G0YUri5m2/nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764992574; c=relaxed/simple;
	bh=y6COX0yQ/o8BPyOKWWJMnS+/AJLCDy2OYdcG3bwY1eY=;
	h=To:Subject:From:Message-Id:Date; b=JkNeDqh6UBmv+0bFF+mjBRc1AWmBtI+4HW94lcBj9bcxo6EF8Uzlj7x6PV4pq6zYExm12xafPST/CnuvjULWO1SZpJ+wXvXu7to+HPGLizF6JN7m+sBRQ7hOy6PpNrcm1/pQ4KUHLTurm4BRW5Ga8Acb7eD/wKkmkkXWZv2psTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htN021Ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htN021Ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A24C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764992573;
	bh=y6COX0yQ/o8BPyOKWWJMnS+/AJLCDy2OYdcG3bwY1eY=;
	h=To:Subject:From:Date:From;
	b=htN021LspSP+3fp1JnK/yPdk6k5cRXPToXLcAZrD7x/3JDw0ZciORkE/ydw9Psaa5
	 bavuYh58mVhuwZAv2myDyow6BymddMOXBKsppld6Ea+S2wG2cZXe7/k1gIsXdkW+ZM
	 KlrUEfP4Ol8iuJZrznXIDbC11rd5c0PFtKh/p0Oc6X3ZT2IHJyMsozElKDATUnjOSx
	 vLRZJFdvZbVbjgNejd9z/faQNSZYfnFSlETBtdcLwX3zIwl/MzM2S9Ua5TOcz9VWr3
	 Wu3wquzjvHJEk5dJQ3M2O+vwKDZtq0szsh3F4QKePC4/qFV8A29Dyl4Q1FM3q8C/8I
	 AGtyC2rDisBmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B364D3ABE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499257359.8475.7299199891612371457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af850bd817555fcfe09a27a865abcb1ebd18564ce281752439330422714e980e
Date: Sat, 06 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764992573
