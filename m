Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188D4524F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751800194; cv=none; b=ixYokNUpuAp5guXXBL2V7vaz+QvmBy/j5dHKLC1jv/D8YUjER+5a4Mn9Bd0xzqBAi9kMdyxZ/3Of0my1j2MuLMaxhiEDTDiUUCNp8i9LKTG1W6F4jDKBS/Mx+MjzHtPtMBy8/P2UMVCeUtuSBNnyCyK0+fNNxVnIfOrRF2vapXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751800194; c=relaxed/simple;
	bh=gNCuFxlpCxQnYtXjGvWE9CjMRYJl30EkkrnOmVU3Tcs=;
	h=To:Subject:From:Message-Id:Date; b=S4MWjO+3f2mHTzXqp+FcJ6YoCT+hgWiHQEM/n0GK3OE/FdDQWsC+RFrMLrM9fpFEgUT2EZe/BNtWpHZ77kFvEsuzLlT0XUkL0/D0OjIiRsObcIRdZ10lqu6rSEixG8zmqbijfczeSmn9482Xw9STC6rg6/qD7eazcs8hVvALpo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiQtQXe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiQtQXe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4290C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751800193;
	bh=gNCuFxlpCxQnYtXjGvWE9CjMRYJl30EkkrnOmVU3Tcs=;
	h=To:Subject:From:Date:From;
	b=NiQtQXe83t2d1hzXbyfl8n3cH/VYVoYvtRgivYcQ3ZjplTOHC8Wyt7hf35J6Jz91W
	 IxNXFrSaGfQsB2wtA/osrMU2CWeIvehAhlImRNMyGxbQd1ypsWV7nlTQ4bbDqz8GvD
	 GYtftUwMKlSJxtkYqyExPjTKOu4EQc+Hu8qKGBTGnvNp44qY7WyNOVNT9PhPi1UCsN
	 4I8J51Hs9BRcU3C4rXtXCnmgRyfRdjxRLEMuVDileUbcdIDfkYFJafkXX2DqRUzoD1
	 xWadlrIXNl19K/jcbAj7a/1aG/Pipan/VU8+ifstI2ElrtHX8PRVKPfGhRC7Bqks6T
	 wEN6eISoF8s8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A9C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180019357.7357.3615419163482750954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5c953737b9401c87f7778aaacc8504a63099ebeb016b1a348b90fc48fbe340
Date: Sun, 06 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751800193
