Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7A2136A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719533663; cv=none; b=J6oaPs3V3fBZ3U3/nYQCtGqnGgMokJFKf01urq8eRv39WIJtWmE4/chB6lUbWXhhb+jd483oPh6HdCa1SiiQBZOeXzVOgWWipSAIxdFPjEO7msemiPSuIpM3lLTgM3aMWvwoJ0cPOIQPbDIaqPxq4uOt+e6flxfxAGzNHY3rNeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719533663; c=relaxed/simple;
	bh=TFQSLxa2eB7Sx/UCwIFIe5X073HfdcF/k0RX4A1zNKA=;
	h=To:Subject:From:Message-Id:Date; b=fu7RAOxJ6BxOGNrAnJsQPYikv+wk36hi6Sqh1QpKG7FzJ0/ycdrRlOegMUJZCZjMp6KEc/vmTu5xb3xSPeHb8MlU4WBP+Hk2dUDcT5X/X75rbvZeY5rl4VbkcTeo1GzMMkcD3rwI9eLUllFAtcn+1fjcZ3qKmf694vWGTpTEn00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpFI5lRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpFI5lRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA219C32789
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719533662;
	bh=TFQSLxa2eB7Sx/UCwIFIe5X073HfdcF/k0RX4A1zNKA=;
	h=To:Subject:From:Date:From;
	b=SpFI5lRRH/vokyZsWfExX3Fbynn1Hv6HsasyyBDA0EuPU7I7rJG9J3pdl9bi9J4sj
	 LPuqmX4MTbwOatOGu4Y9/S8Vp4+9bT1kkW8wz4zCcbdU7JKvyfgiL8Zb2dkn1fqDxS
	 kEu/nePWQxKb5rvz7M5EXQK3dmadgg/nNo0XNPDz2+efW4iAj3FWjIrTjnamsFA0ZX
	 FGmATcCZCe8m2CPa8fJJQLg/G651eE7+JRyG0WQTgEnjeIsYsqZtIQteDSdIv9h9vb
	 yvxRL3O5WC+UCkQd8j0DosgAoMIulm3PlMtT7cSCSFcJAHwYxZo0XNSZdJvIueRQgh
	 dZPEPYziLxyFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2980C30653
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953366278.18365.6543660013804442018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a707ceaae25b4306a521ba7de7dba2c7f9352985b3bef842e1e9248e8ff8ea6c
Date: Fri, 28 Jun 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719533662
