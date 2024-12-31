Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D692BC2E0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735605353; cv=none; b=g+91h1p+hIcsUYHBDrmiMDby0jKm9Nwr9GQr18R3pC/5PhbtwrmDArWlrptyMiBBOFmH13F0ElxExkTuI18q5QOhxC0IhpIe6enK2OxXJDedHJ+G6lol9L/GbIpZJqbWTHqUiabBJCk5zcN69Bz63wh8Zl7cqUcm5uQ1BtoWuS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735605353; c=relaxed/simple;
	bh=XhvnCp7E28dd+Q8JZVXEgDFXMVGsztYTit20MJ8fqcE=;
	h=To:Subject:From:Message-Id:Date; b=jaqQPTOjfL99w60FjjlXxgmUOmURJwWkLmQ1I8YrkTOUiVkl1ZFUHVMNgvHAlzYfuaLS4emBiBWrpw34Naj6XH0RmQu+gOy3Q6HNrWKmu0dzG+fDU79Hmi6ODltVSqj0KqxwPQSkuTINSwxPuKrJVHaVLB5/rKXSisyLH2B/iQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7+eCtqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7+eCtqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE82CC4CED7
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735605353;
	bh=XhvnCp7E28dd+Q8JZVXEgDFXMVGsztYTit20MJ8fqcE=;
	h=To:Subject:From:Date:From;
	b=L7+eCtqXbSrFm0LQfF3iOd7X4JXC51JA8kov1jMNB62xntIJv1Nuu1LhvPzjvzxwQ
	 VQmLL+TZe/iWb6KARzNhuXOGmmh6Ft+g+O7mFlTItnqam8AeqfEp1kZtCNkjxlQxX1
	 E5Gz86t9Pmj/vnz6XVmo9F05IwCui0JzrdFpRGEIGg6J5CxUTPeTtM2SsTR7k06T8F
	 nRrHlgU3diXOsrgrBa+Nm21IIXVxyzKbdfuyj90/ru/oft8oUaUuWj0x2tBf5BBpj3
	 Mb+axK/8J89nqRc6TfugfxVBZsFsrNzdGM/dze3x8YvB3fCGqhAO1wC49VR/zjrWWX
	 v0inJqWZzLPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C3E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173560535358.22210.13400771992051757152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7318cc92e689bcf801cbad6c2caf0b9aa1ced9bcb1aa424a49d03d874e5e481c
Date: Tue, 31 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735605353
