Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045511C695
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710696497; cv=none; b=RrjKmDW6F1bLDi6LHclJ7aIVrwcqDsbcTEUUlEm+hCsn4V0qTZW20JXLGHaf0GHC6W2vZv0e4qEAtLGrIHGleGOhauVe7zeoRXMRS18B5J8hVPS07rq27SZSDkWck28Kl+EOvRspmhd//QfELGRFqCnozmKN4K3TfghAyEvVMk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710696497; c=relaxed/simple;
	bh=0exqNqeeTTf5kmhrY5hyRg+gtxTnIcx0PMksYLZI8X4=;
	h=To:Subject:From:Message-Id:Date; b=ZIxyjo+FG8Mdk9eI5QsOQ0TSKGcie2cVJSJdQ0xU1WFt1NqO06NuTmoL8k/MH/qMoaa9PbT4B5Rv5xM/2qrSp+brSPMB3sAIzMHoLjLQaqGS87RyKQYS8fM0mqVjYx8UOQeqzIqneM2KMW2Myi03hqe9vOj9Ai3n1f5UlO8ge/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXwscR0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXwscR0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 765CAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710696496;
	bh=0exqNqeeTTf5kmhrY5hyRg+gtxTnIcx0PMksYLZI8X4=;
	h=To:Subject:From:Date:From;
	b=UXwscR0dk/7HlBLTZwvY5yrcVrDvlC8+Mz5AFzRWK+vhRU1RnsDs//JE3DJM5dMDY
	 7quvw2u/IgKWOusENNQNEajgFARoDS3qASE9Z4A74Cnks38semCPXJYz7S1Mb/85OL
	 gkEoUP+9gfy/MtOxLUufn0WrkF3yZGggfxu1f1/MF/B+5HcXUvHfP6dxlgg7Q4OFgp
	 yYf9/l2B3ABkzeRrVjyA4f7lUCJl/hDoX9x/mjtG7UdMbKrjZZ8h7Na0I27k5hUB3g
	 rr5ugVPgeBPSMz74Mdwrk+O6Rx8OkZYsReUeyxLjG5huMoKm6WCeWw3mWcxIrwSG7L
	 i2r9oYS7Jt0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62218C54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171069649638.25066.6830413160342410201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46689d917c37368e27cb574b9b7828e3d153919008630574c2f919773190123
Date: Sun, 17 Mar 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710696496
