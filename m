Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3AE23237A
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744840794; cv=none; b=Ku/mp9bLRrf78wG4MJe+L0exSg1SoemTwmyOiPp8QcrST5cSqbYw4WxaC42XwdSJpxIUcvPARFMe6+ldCVMoWeMPK/+ipiGdVyOJ5/kOJKsgKIC7TbqlgsqGDMlvmG/4ajQJuCdJr6gtnfbYgrdEZm+KJi2GzDGJRqra+v/sSOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744840794; c=relaxed/simple;
	bh=uYu5gYyg7MUDX3y4c9ihKeiGFh2LIUUDfXUj5BGYWEY=;
	h=To:Subject:From:Message-Id:Date; b=rA8HQGhs++dbUuPcbohSjQxPwmE6TkX4mwA+Jmf6Jj091HHtl2HtWz50pPDsmlA9gPM6qLKpcZhScBV+I2JLQVb4FoGZzr14xb4k7Tx8Nf0kjG1RSSutNpQ16pzVPi7wChR0lT+1UZUyzb8RpxbQhoPtZjRY3jFH4rm5DGuFnXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goYSSrUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goYSSrUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677CC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744840793;
	bh=uYu5gYyg7MUDX3y4c9ihKeiGFh2LIUUDfXUj5BGYWEY=;
	h=To:Subject:From:Date:From;
	b=goYSSrUcjmA4M+fsvVVv2tnNc98hr5ZcSw51X9UWB/Li7lBnOYUmvESiAIuOWEb4l
	 tRf3MrxkiCaRgE7oAFsnhrsUVBvytewsv6hiQ4AlbnmszEAwaBDIrWCJhvBO/DwVYk
	 PxXW2MIQKvsou2ol6COFzX6vcsDpZ0spKtZ92t2ViJOd+BLXFphEXBrbXo/+V2Bvzl
	 byxHkz3lnmlOh26i5P/9M4KRPZba9DLyp0q26W4PoyBKaEdEFIFpQF1xck8lWqNSdR
	 m5ykbdbwJgJ5lsD6jBQoiRl5f6IHTpYWz1MM78+pskxLqlIxlC++dLA5I3a4Nakp/D
	 SyfdrOhBPrS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F05C369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484079358.17060.3324413038606164467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adb8acd99aa58068866a57a1a67ba128841dce2b09662330d9bcce829843202
Date: Wed, 16 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744840793
