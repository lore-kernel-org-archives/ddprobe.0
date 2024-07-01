Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBD82AD0C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719865523; cv=none; b=OCv54LJZJgTWI4ep30iLxC5aK9Bgl3g+VZyqO9HCdcs10KrTgLhydNLS62jLkchVfLrYQ2ePIZm/V+2Yx37gNtme72IENWtcJ+wgurqZVgoC41t55q0lG5Cs1rCkl/YlLQJiFmPJXiVWHhG5AIWM8bVJZ6LLBHSYdC14jM1WXfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719865523; c=relaxed/simple;
	bh=PmrZ7a+tXHrmS+amFz1f8650rnyNvDjtzN0AMKkjfbI=;
	h=To:Subject:From:Message-Id:Date; b=sog6TeLFyTWr3iQyW7XW1HXYrZJIYjX+oZygGx5/j2n9Y24fFoaG9ERPV8EHOORPJ1PYXEU0p3acn8hXj+ECzsBCCNQeSLisKfHf/aHC78uaTETSKcFXgdZHQdAB7u4TzVfCBzYA1REzSx0WWKnefqXuj1gcgRjlR8oAH22BdGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBaQvs2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBaQvs2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05F01C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719865523;
	bh=PmrZ7a+tXHrmS+amFz1f8650rnyNvDjtzN0AMKkjfbI=;
	h=To:Subject:From:Date:From;
	b=PBaQvs2iJyGZ5kHoFFprJJqk+UUSEZcVlV7UAp/znsPJuOPORs8cDpuTAZdHq669i
	 7/exb5FBuFUzuGh1jli11capC7yr8qMu3z2SheQxGouHIWPTCqov5tLL1Y0Us7wY5B
	 mWuygol02KxaYwZnuXuQgFXZMxdNDQOJI1pRsGVciOHBI65TUA7hkafE0XZDpg22ld
	 KZYKS1eFE9tu8wVvBjaOm08jvaYNxtLxaqDw/OmzZDLxaEjjw5vA8ZLhQlhiJnJM63
	 S9e+DLWmGhrJ1Tt8TXyf8lXWxpCDhIUH8IZKtOvBFV+vCamipJfl2pNGND4UBQOY2J
	 fZPknRpX3+PkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3541C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986552288.30319.2969451777220962940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b189131b837b571a7303de15640bdeec5be851a147f0e98f82c44152ea4f41
Date: Mon, 01 Jul 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719865522
