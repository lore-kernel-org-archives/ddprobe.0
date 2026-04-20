Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6BD346AE1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776720454; cv=none; b=cu29S0fMoBTB+NnNykpTr6we9JuAjvVM+VD5a9KQfxatAF6HMn5c7ruAwUNfEF0dm2D/3hkEkvD7ok/BvkqfEd7vy9dDMGuKeK4rZt2DEtz/hOrpZEConIQmCQh/gGlQATR6rfD1hY0JTGJezsYvJwZ4DBC71HDjNaztRsKwvw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776720454; c=relaxed/simple;
	bh=HJ5lPgkEz+VXL7QEz+0jo0owxuxTvnt7pxr+hTZRdhk=;
	h=To:Subject:From:Message-Id:Date; b=Rm6qxt+0s5xeb9X7cEyOMhEv+CKuihq+XLvsvbF1F+8bJRtVdIELQbmYv6KmXJvJJiYjCqB3quowBY7L6bd1Ue5mWJwvu5JBCrL+4vaKlA85I6i/bhd+gBqEAG8xFoaS1wvGscbprsEpRzlvoPejCgFq9nxLHigeCMM2kZ5/LXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbippZeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbippZeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4E9C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776720453;
	bh=HJ5lPgkEz+VXL7QEz+0jo0owxuxTvnt7pxr+hTZRdhk=;
	h=To:Subject:From:Date:From;
	b=GbippZeKKbFLjtnynGhlPq4kV+e3XjIiOL8vhS19sKPvMoezLMMppwpfHmJSroijb
	 6ZVDLwVEwIpo5a9xJ8ifpY61OlsSOIQV4+psbAp42/hylFhBDZVgyS0W5LK8Q866re
	 KnG3+nDyfwCfPmODwrX/YuTVwcEYGKoVbxtUrUo2Ps1wXRa6dfVlLfpkoUBVV2b+Zi
	 M2Di4j8R6chXVG+79Ra3RsccPdQNgY9l4VdiuomuzI8ctBGTBqIn89Q6Wjq4wun9fK
	 RukaVhSaWuBYrkx7tp8Oxw1pCLiub6B04KSjzAYyRw+PPs7NhLa3wVvHq8XBc5ZQS9
	 UA3e0NiC7Y4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE84F5A8C5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672045368.13352.15387789426139301187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be9790c6dc52b599296c4674ae89a81240d35ded3a310149ab41ef1bc8789ac
Date: Mon, 20 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776720453
