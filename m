Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC8B29B0
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745645394; cv=none; b=uA9f/HS0w4mYabqG14QG8THOL6wuwHf/WQ5F2iCy4NOmESKisRS2smW4C7POnnfTuo1GpA/D8Og4lCjdUmNfgjw2NKmpbmHwSxGxZRc4EaIXorkW0U2DFFYqbd/Kj3vBxMVORXu0shhqVLgG1AcUcRbi+sn0F2NqDH4SzaMBNKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745645394; c=relaxed/simple;
	bh=L7aLfqS/Y+c29lxHjLeGT+XfpDAoKBtmYyxnxChlk/E=;
	h=To:Subject:From:Message-Id:Date; b=ih/H2FomxXe5YCIXFbZetH4ZpjbyDQkRSmihvZMX4uvA+LfD0eS4Dl/T5Vadx7Ra8YWvklBUL2/ypXc4Hkv5d4n6oCF/Twf1Z5N9lWeqBibg+v3mFL3MYAFY4dbF0xQWZC7dkrPmrAeimLwjxAPY16tm9n/3Gonv1jvDE5nXlpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fz1PrCft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fz1PrCft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73DBC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745645393;
	bh=L7aLfqS/Y+c29lxHjLeGT+XfpDAoKBtmYyxnxChlk/E=;
	h=To:Subject:From:Date:From;
	b=fz1PrCftq88LdhLNVONxvemowdzSIbnn517c/AOYLuZ4dHtAqhMfC+LyAcM9dCaXK
	 Zo+7sP8NhHuFSX1LUDBk5QJn2i1TEruQI1l1sqyroOcr/mK7LZlHbgc7TBEdC2uBBI
	 qjPoKa3CkuDIyEISFRExE8o7mbFMKCwQp5yuH1KV8e2XtCEqJNmDdFQGwGxaN43aAk
	 XN9yncNf7zNWJy5aaIjOo928pkb9sL6XyjuqusHN8RDWJ8T+GkzP5feP7nNEcqXC/L
	 vSoLrHB6QaLrU3SgjfA9hyT49Ysad857b6aNONOSZWVMYGlfL917GpD6Fen/d8q/hA
	 rJcfL3YXi9IhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96249C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564539358.8896.7307276137118219964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd5417132234175ae600d4fc7c7d015dea60ac70a964d66f275167f5580712a
Date: Sat, 26 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745645393
