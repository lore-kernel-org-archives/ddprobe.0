Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA027464
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755971994; cv=none; b=hN1HSMGOxbKM2r69PIX1TPKavN7YN/Bma/6nPSjWribEa6vtpwXC1GY8Kgv+Ptu4jN9ZKvGOk+IJkf1M5kib38ckvC6ryfs+RXu5MFWDRKVXewjSqX52D58fYi243E9NURCykKIQ0PS1h0UxwGB7g+UqkytArDFKe2A2oXE66Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755971994; c=relaxed/simple;
	bh=5ZkngGjtkuzAJMHUBnVdeKzIqvozqF5pWYbeIR1Dxrw=;
	h=To:Subject:From:Message-Id:Date; b=ek/xAStJuSYWSe3n1RmaorTKs/+A7u+hWDbqtM8WHan1mfQtXOBuMcWn7+kWo2/qfUxGHC/MMgJi3UMig+lx1pRhS0sCAV15r99qdqL3YH3r2//X5EBIcwYuLRxGECT67w2CfVASLhKWG9/jM5ceXo9fD5PoMc6c8qpJheInOfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAIP4r+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAIP4r+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755971993;
	bh=5ZkngGjtkuzAJMHUBnVdeKzIqvozqF5pWYbeIR1Dxrw=;
	h=To:Subject:From:Date:From;
	b=CAIP4r+BmqSXv9pnjpST/wiLpZYmO8bAM0lwgPv8WYKIqJHGVhoPhpJOPpGipyv7f
	 Xuh50WlHdgkKyF6pRUI9wW9WRx4jjW/MB5/k/VjNl8gCncKEVU4eTGqPOgDY19H7yF
	 HMAaMjkGg8++rFlIWpeZv3F7kiTgB8Feo1BGpM6NMY98L2Wi3mkDedjp0Rz5r/OxZu
	 mHvDVOa7W+MPCLe8KHegiNthx0pm1fz298vWctBRqjZpMLeg6tdGSvbfh0KtIA9oNy
	 lli3/8fprdQeEyWoq8IDNG4TST5HkN0YFd769Kk3WapHWJM6oRO+Pb070qCrUEF3PQ
	 Th0koALVgp4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB4CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597199357.13489.18077103810591331749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e5b69d3463819fcf6a124cde349f47aca9f1b382378094b44d0c5d08e83c4d
Date: Sat, 23 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755971993
