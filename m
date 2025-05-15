Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FAB146593
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747330794; cv=none; b=WJ6/Gjpg2EnQ0Bg27d7RUONgi9BVQRoqyCMbewLNJMGEomvxgyd+ewLZA/KJmuR3oGAU0pLdxNvgj9Xyq5uELW+Dnv6kbsNh0kiFF4Hw8ReM8GAebduxXwiZo2aNvrk54dnxi19YKz1wJ5LFZ4zHM+2owCC6Jq2OdfV1BKyElOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747330794; c=relaxed/simple;
	bh=bQXLdLcY+S/hfeyRDh7MvdYRnaXJtMzc+8ZqKYILjxY=;
	h=To:Subject:From:Message-Id:Date; b=rHKh0c1ZuRJlCQSN9wcJWNS+66NHORxMjjsFDp5QvLxGFWiRPQG95VgYBQztJy24G0QU5sifRQiQ/o1A3Xd8HjqsHFh10fF6Be/a9ONLn2bwtuWbya6gNcphPTIsX97GNOqYkpZNLD94c3sAw8oYbXz+VzVBGM1Fon4IUj1nPro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+XZhs+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+XZhs+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747330793;
	bh=bQXLdLcY+S/hfeyRDh7MvdYRnaXJtMzc+8ZqKYILjxY=;
	h=To:Subject:From:Date:From;
	b=P+XZhs+2jKEY4MBnq1pdLRaawFBLTmNJmiDqn2oplhLP4EDBFAr9xWMptH+ZdmFRC
	 hEwtvVYcl5aKvEErNIiPTSiZ3ThSqajEofFMEgid93q91dJExgyuu386P+Bh5RjDFu
	 kE0QwpG+ZU9KfqjVpH464PPQlqHAvm6jAf3qR5uYiKWlLNRZBopYKKDQxgLP8IvOE3
	 JTzUnGSys5+NSIy0tg1Pjb3F4QU1iVX4aPKaGvgrXiMGN2fvUIcEOsm24VCts9P7Pr
	 5IQtxOjfDIEPo2eQyn5BvQbD+zuhD4KmGXejnY/bymVwpXgkiUKatseUlxA2i4WKTO
	 xoLqQVyHD6lyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B7DC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733079357.6938.367901423455923942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ffedc9cad71eb99a0b5f12080a81dae86dc0d6d1b708711165de05e2dbb1c3
Date: Thu, 15 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747330793
