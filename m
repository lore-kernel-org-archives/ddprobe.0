Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF02A92E
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745114394; cv=none; b=R0CVk5BB23eypr2QRchqaBA3XCiZgXdvITHdT1PGME/XFlf2sp62XbHtyzEEGgmTdFY1GZ8Ms3OhGj1GOaNCRoXfmvOLcB97GTO3t3lwRyNc2MB6/NzR7z/K+wVL93KmHzVkltNzlZmYRz9kNXa21c4TZpr9vdVJxDDvvQCTyj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745114394; c=relaxed/simple;
	bh=GeFtgfWdhXTG0M0g8CpD7+GGaGwiWa4KI5dUn4M4zLA=;
	h=To:Subject:From:Message-Id:Date; b=UqTYA93eyeP/qrsWw0Q0XArnubRkT5tOsyUTHkCEt1b58isIycrd2Wtd48a0qGIcGWkPkHXc8A7YQqNhd/JBQz2aBnMEHYGDfXuYX/UyESr/2eDfkfCy1KDDVl5UYg0sVLxQRVxn5k6AvtKdy1sBdIxpKYBr0RaEZda0kukQIrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYANthzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYANthzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B421BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745114393;
	bh=GeFtgfWdhXTG0M0g8CpD7+GGaGwiWa4KI5dUn4M4zLA=;
	h=To:Subject:From:Date:From;
	b=UYANthzi9XkVea3MdSuZj2MaUIWcBCu6JSfpQncgfYB0nA/+OEX+nW38RkiQPPGse
	 XeM/fbCzmxpn6AAHwaHadVmOnXk/r8dTa8VQSlwPx7a0rSFgq/Z4e2Tj/zDQnDCAeF
	 4k1JUZQHK34SpT5Q2Iy6zDQF5G6WhbuhbnRgIFYt5Fb+vnhwYo8kwDrzK5KeaLq3Ok
	 cs8Tvzz71idKNSKpIMe6SbMfN70FPRmPfnJlySfHNuksCdz3unnrj80jCiucvjSHxJ
	 AaQtHLoHqYPGEeY1E2LJC/DYDrfPrbw7yZ5dwL3t52WfT3e1TxgmcNBtsSuLqdL3m+
	 /iAns2ICdUWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17E1C369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511439362.20891.10316789380130865042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8467366111b0a784888f46bcca93bcadad01417fc3256ea71abcb8bacb8774
Date: Sun, 20 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745114393
