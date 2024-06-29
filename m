Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AD1628
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719624863; cv=none; b=SuA3OJvosmbXhizt/pb1KsRnx7SA++n/AuZ4FfO0+5JS7fp1/OgaiS9J9SM5MDtizce34/a0gf5RumItahIxCBBMC6LAEKgg0YKyzZfRVc8g/XJBk0Mfm6bzgTz87nNWMIbpOAJSx0KXkOl4ttfQUvtyOwXuoZTExp7cuK/bDQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719624863; c=relaxed/simple;
	bh=UmxA3R3dzdh80KQpWBtryz6PBbU+Pbs7ZvdsUQgbjlE=;
	h=To:Subject:From:Message-Id:Date; b=eMv5xLzBcZGt0IW004aR1W12qOCaFMxX71fvckqhWjjgLk6alBNfJkZtj6E+qyqdCZoRwPcvIa8zbsJJTepNZk0nycidEpG8AAk7w3fcm6RHSN3NMkEJm3UHnFfLjwxX17j0Pf5Lhc4KInneYI09NB8jVV8YQFWd7iLUCWLjmRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2cmo4/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2cmo4/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EA0C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719624862;
	bh=UmxA3R3dzdh80KQpWBtryz6PBbU+Pbs7ZvdsUQgbjlE=;
	h=To:Subject:From:Date:From;
	b=V2cmo4/g0YkMV4XPoPvw5YRafqX1Am7Nq4L0lioza085+Yy2B58KR4hawjXH/Zzre
	 Y1aLVAKXAQA5Uo0IvXuGTZZc+IxkxGZ/sm5Z1G8EET00or99pNb19hjdtj/WiTCwM/
	 TIrmcBft8ufRyK2xdycDNWYbV7Xpj9Zxu3R67i/Q2vXP/bFAEEotfQLZk60Ksti+Cf
	 k0M5aEcLfumjCLEANN8cXu+BADHOO6AclUIJ5ctli/O7vf4XnksbZV6qtCj8w19ftk
	 KxnzT9C4Ee0exOLfPX95hMzdXLs9q/V1pT7f8TGKGbwK8uWKAq+E943bKSoYcpS/PF
	 rFcaHk85J5JXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2B5C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962486283.16479.12635487101933263084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351a64f10c80d4becd40e50caebfc9d0dc5e3f3d6c79347567bc7527f404bdf9
Date: Sat, 29 Jun 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719624862
