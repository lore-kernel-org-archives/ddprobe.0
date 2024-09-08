Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AED1C01
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725816954; cv=none; b=PXWNRERCbo31PIG4VDeDqx8VLPE91EtR0+chy707zTv3ZpYTpWLf4hBn1NDqlDAvicwP4+rQJp7ewGVcyBqkRFfgt1zVAwCWg8Bqof/klv9KFVkV5exLoy4BaHdvsQ9X6swto6MrufHcI+d8mX/oWBXsai6/nPV87NjpYRwKBKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725816954; c=relaxed/simple;
	bh=d0/eLzfzSs6KlDJa3+Ey8xuXa4ENT4GGHSWhBWaWEMo=;
	h=To:Subject:From:Message-Id:Date; b=E4y+gTxctMoB7d/L3lkfELx/HlM6iwvcsCMxZReLKFPNBO6x8gK+5qqd4hcepE1UJ10mGpQj2DIrDtsy0XmON/fTMQvHaI3nsjK33PMIR/hEo7O+6A+ws6mnRxcuUP3B9qZSDnTIS/sKrFDl4+SecJ6ZSdNGROO7ozQcHR9LqjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xkpk4UKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xkpk4UKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D19C4CEC6
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725816953;
	bh=d0/eLzfzSs6KlDJa3+Ey8xuXa4ENT4GGHSWhBWaWEMo=;
	h=To:Subject:From:Date:From;
	b=Xkpk4UKYlqeOlufhhreku4/RyqTvwQbQbxRwJuWyRRWlwcaC8BdE/jSMzJTT/t+N/
	 WLWZvoXZMaYRbHVV6b60b/NPvK7F1qad0exhwA4adGjerkYgFWu0FhDBzNK2oavpIZ
	 +Lk6jhCgrIPgR2M4Z5YSA0SeO0wLPNjmSey/2cwUkSzOApsJoB2nVfZCyRo740e5kv
	 7E3UPLK3aVNzbd3mixt8pZKTS7NkYDYUtJK+o8GDK33OasmfYdlKO7jQMzYYilaiwq
	 /zoztbfKrbSR6tKMSF99OgEs520jlRiVTEOZSx04fAkAurUg2HrZPUu6nheyoxi48I
	 DrGQXW+0u9jFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C9CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172581695360.6510.8659327218066245180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f58178bd143411b18d83120c7ee0fdc9dc9102fadea37765ff0fdc98343d60
Date: Sun, 08 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725816953
