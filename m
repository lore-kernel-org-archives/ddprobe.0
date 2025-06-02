Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B46417B421
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748887194; cv=none; b=XL8hBHbAt4z9NJ5bxxzEm8ux/o2+1m3qLvGsaDGNah4cxHWlN48uTnigShMPcC+dBRaiW7LvJVLuhV2hEMxqCuBKZzwy6+zx2SsO5L8G/ONSi9HRH1wgy9sS4R7v1NBMgjDo5w6AxlJ8LhdOoEs0NQeDIWwXBFDCw2f4y3Am6EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748887194; c=relaxed/simple;
	bh=x4aZ0SC1WvZx08w1bTnZAZLV3A8QzgaQo0boA2z6/qY=;
	h=To:Subject:From:Message-Id:Date; b=WV61VZc1TxECOEyrB4eLyWkdTh4dlBoZJOBONF0PhhlnWx7P3VfHJWhiE6B6EAme8UUuS3U8/X/rWAV4bZK91CTzSfuSwL1Oeabc2gnVP4r5s5sBd0PPf+invT3isikenVoUDDjlYxT17xGC7Ziz1qu2cDVIERV4akI8tRNRkDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUh7osSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUh7osSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4B0C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748887193;
	bh=x4aZ0SC1WvZx08w1bTnZAZLV3A8QzgaQo0boA2z6/qY=;
	h=To:Subject:From:Date:From;
	b=rUh7osSCZJ5o5NF6FB80bU9eZrGoFLjvOOxTm3YPr77TEmkRi7Zt0iaQxmyjuM4kq
	 Q6j6XPWn+KLIbcBICbcAle8wkeGNyt4lVYzsjDm06NDzlSB/H2NYo1uhqWJccc80Bd
	 MRkvMRifEhwxc5hu6Qh9QB+yqxsh7lZxiGyLynsZVNuhkQ50kaX8d74sV9XhWQii2q
	 yk/0yBthjmlG7Tg8gz35TOWkJ7M+pS7w3wJscaWVKwaMtvaxkziuqxjVqvdQltbybR
	 LgJ+nzBw0sHiYQIzud3hVpgfu5GBad5zBLDmLwUUnjcRB7EZKgQ1D05OYBL9cIiwo5
	 PmB+Ue0S/O7aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92888C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888719358.20596.9047800077603088187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266dcfea4dc88988f47c2c41d15fc7106fbc770b7a250e9b3b7f919b7b48c24b
Date: Mon, 02 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748887193
