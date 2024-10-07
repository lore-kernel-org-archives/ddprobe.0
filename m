Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1101BC5C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728285954; cv=none; b=GWR9rhvrA4AMwOqlx5cczT4vgdTiG4WGDMpsCcu255YCFnsdwA5/fEIiZDuwG+Fd3djWe/C5FdvFhdQ04BQWk6QM4aB9SNLAtjF7yaf1n6rA0RrGGrg3oRNyEkDLwWR9PH54LLt0ZrM1iIIbyR0D8L7Z8Ap4QsyjDHAHfZoKPzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728285954; c=relaxed/simple;
	bh=ERo+5mfMUSPRaKy2eMigAi7mLj2wXOq1+bGInkoJrtk=;
	h=To:Subject:From:Message-Id:Date; b=q3kpmlUo+MaEXWhOHrCGoussUkp9RKtQdmcJEHnQsUm1o39ZCNfBM/e0mLpbB9Wk9Ebtf7Ow7fyy8QPwrIGiH8rWeNF1GJ7iAVELCfws+Qwh1LMEQpEfmD4TzIEkeCMkTCxwyCZCpOxmUMLcza9uUEZBq5yDqV3VvPi5r0EMiMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVSaBDhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVSaBDhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC5CC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728285953;
	bh=ERo+5mfMUSPRaKy2eMigAi7mLj2wXOq1+bGInkoJrtk=;
	h=To:Subject:From:Date:From;
	b=UVSaBDhPapfp5+oz6PIl3/qbMhw5gglPKESUR4YnXC8SqC9z5AN8ZeSa+Xvpbnf0z
	 r3VzXN9FUt4SFPSdiyvJ3m8j0cHduNmMZ+e/s9/ruhFTdlgNV47u3i9n7LwMhcfuWl
	 EQE7t80DzF3aLZ2Ys7j/1OUvhYOGPpd5iyrEgk9ovPbd0dWLjYoErVngVkJ0fFeehf
	 4fTgzPnv53B0hB7kmooiUmpqp+mTd+gbxqs3MoMWj+GrCKOLg+m7MxZOXH750doOTX
	 1r0g62v0IXV6y/wkdXt2/2w5wSg8VWN9iZsMXbVPkLac5KIBBBPp+kbt4+o7PWRCDI
	 3rcM/ATlQvrEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0584CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828595364.4534.4349877013344598029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3187b6da21003743439accaf0e784f8ec819bf3b2deffe84f85c6bb450d9e3
Date: Mon, 07 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728285953
