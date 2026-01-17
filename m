Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289DA284B2F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768638234; cv=none; b=FV2aaZtkx1THmT8PclT8wXUzPDZeL4PzYR0BwiXJzKpaguMBX6ehDIj9jk3XCIn4GTBZJKQBjTCueq4GIW/O4VbEPhTrHanM4sPONVIc4/7qFu8tJ9YZg7Ch/wtFCER9qzuNM+O4lWAqJBgttwGCsJ1U7Td3IzNGwAqWfFsSwzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768638234; c=relaxed/simple;
	bh=USeKUOfXZZaCumS6CSAcLq1K4eDw9l3Rk3ogRqe9QdE=;
	h=To:Subject:From:Message-Id:Date; b=oyV3+D23KTsnKLM/1X16JgT5Fei8bJHUKuwmSqK5AJ4yO/LlRrJ/k3CHqnwUUfGYUqyvtCbjpeNjUg9B/a+hhySkQYxj6URBvvEvEt6hzKemqbtTRXgh5kxLye4rLdj4Fzl5UC3sDH5bS5nQyE+wQjXMq60jLlyiAmZxQyixsl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLTL4wX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLTL4wX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CB5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768638233;
	bh=USeKUOfXZZaCumS6CSAcLq1K4eDw9l3Rk3ogRqe9QdE=;
	h=To:Subject:From:Date:From;
	b=GLTL4wX7YEExwQRFYhB3hudUdaZrtOPXNt1ri/Xgrrwe4S8CDcZsA28JUnZVsAvEQ
	 VsT9hnHQdZ0NYJWLoBi35MP9OiQ/Ru3Kj6TmGNKtZ0fgcNBOK5MHBLS9VdFFS0U2+f
	 5DYx6TpuKLo+iezy8HfB8VMveY2cozzbGl+87EAHZHALZSXfOYa/fURYdVERntxOsI
	 CPGtjUT6cJllFG3HmDVSLYDuxifmjrJcuMJvf7slriDkvsHfNcrXNZOor/09jHeoOG
	 4gZHE/QM+UZPC+QltebXYkW4bOBgKwJDBSE/EY66Bp1XtNtgIeznT+cImjoFgHfQ2f
	 6s62AdM68Qpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD4C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863823358.14628.8162606136994546145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0551d862e91abfa920388e582177a6bb0f74a4a72379b4671d24563dc26603c2
Date: Sat, 17 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768638233
