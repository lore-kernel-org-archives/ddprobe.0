Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E851A9B3E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744256394; cv=none; b=pJB48g9ilq2Sx8yOybdmq8pWJAugjQO1ON3jujHjrOwJzDuK6wyuCXIQ7NouK7kl3a/IOc3hu+pkAj6mDDVT7V/SDTpCdfDcI2hj6bkLw28pPou0ZaRapXYbJrd9gcAEpEkqWaUV0dD/70F5WnfkpPW6TUxmCK/88ivKH6rNefQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744256394; c=relaxed/simple;
	bh=SMCt8kdqYe+mLUM8qVv1/ZqwCRwIbkVBBkl9EqLS6fA=;
	h=To:Subject:From:Message-Id:Date; b=JGmqQsTSfgYM7KOHvfsfSLzo+RP/nxOElTAD3O8KiMQ4pGkBg5Irx7WrKHaybeJro11mhfcWqbolY0vBuA9sdour9fO+XfubPUm+rsHcQs4qX55VuwPSNMWNC153F+VwtDwC5EqRcHpDoOwhLQJJx4/KiZesNS/DmYYRuPp8XpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gaaf3nA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gaaf3nA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C012FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744256393;
	bh=SMCt8kdqYe+mLUM8qVv1/ZqwCRwIbkVBBkl9EqLS6fA=;
	h=To:Subject:From:Date:From;
	b=Gaaf3nA/kJGKvRkf6gq0u92H+oWxhjukbPNu+1v7XcLSwjXVLLynigBlA7i2A6S+P
	 0YkGIFTuCiSa08VHPZeFGTFfpLwWBEbxAltjDv8hIu4OuaH3+Soxlelc5ktkOio9is
	 i7ZVFHJtXdKQyKe73VCD0oUGT2Y03wquWIcUBt+3kqHsiFSriE1dfbgQxSk29kH8sc
	 kOjO2A4RAstfdSLBpR/jSU5dl5mLvLkTaFJoJ9/HOXSv7QYo9BIqnTvW9knG4CXBUw
	 ydVGDeW5aeJF9VeNk0uQToclwffHuYZOkJeKji+vTfqGix0Ekzf026DTO0Ohusdtj6
	 vu7wgfqrKMYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A959EC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425639365.20089.2784351340266441874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5846f92f22343613ef850e8857a5061cb0806232b6c5bdce1b43a837279f17be
Date: Thu, 10 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744256393
