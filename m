Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6705E2F3B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743202194; cv=none; b=Wd/I3LpNz/MluZrcG21xG+JcffxgF8q0OGmZ7nLjLhdUio931uEqdGL7CyLFd5GOrO6UfRyMUOSIgw+UHi5+Z87b34wHXnyY0hsXYGx7eTPx8fRNzJ4w5dcI/AM5CF3+M+hpfSzsrwYwOiUGzH/txC7+3zj7Iy9lOX1GPhrSVu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743202194; c=relaxed/simple;
	bh=XVH7w6SIwK8KLhGYZa9qh/4vsLvXjKZMDBSXLTe+oGc=;
	h=To:Subject:From:Message-Id:Date; b=n0k3W5iLUVfJ/Yskhmd1OqzWPEzd9h1JLGcRM7QuBSkznOjMQ3QIecU8OCga2aMpxqadqxam4wKOBCvY8/g6tgXeeElivf+vt8fWNbtIL7LZ4bKNw1fNp4ZeHOtGSKkUzGtRNvgjtFTzITEfKCvoWSkDbZHkOC/Dhw6oJcB659Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjaoYwv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjaoYwv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F6CC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743202193;
	bh=XVH7w6SIwK8KLhGYZa9qh/4vsLvXjKZMDBSXLTe+oGc=;
	h=To:Subject:From:Date:From;
	b=TjaoYwv2AKYP5mb1HuL5RXIZfKsjglJNvOO0MG7RMYT/wu0SfC+/+bzdGPKLDIe/d
	 xPUFg85y3S92j3VByjNJFWTmIX33KecJ3zC75SmKM/BRrHCQdFiNqsyL4NtRz8dVnF
	 4zYbwmaeSoXTv0PpTzhFiJmvbAKmANCZbngetYpQb8DAjjS2f7lsCbWq9klGwrbcr1
	 +5a1uTSfssjWHrCrMIAtVtjIJZXGgIVPtw7KGzSJLvGVqdWJxCLFN8DIBj62QWoQMM
	 em6VAhLM+K+2dE49qDTjEvARhV5JyD4fqCK4fOumbtqnyypjDqNV50MuFd4AhJwkJ8
	 u4IZzzT2cDUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3146C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320219363.18523.10206991086661123226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf1b4e7818bdb8637e0605b088508ad714363968ac493c66f0cac71fc8d074f
Date: Fri, 28 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743202193
