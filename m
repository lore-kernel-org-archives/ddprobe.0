Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047DB51C2A
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXlcy8Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82491C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703523496;
	bh=s0cqf2Q6wEXj5yTXdlLCcFI6b/WdVIX+++1D1V54LZk=;
	h=To:Subject:From:Date:From;
	b=kXlcy8Q1FIrh/14tdX51dl2LGzsRMWDLFZBQZ71pKz28oMfxO32AtCm+NwMzVGwPf
	 pkDoy73lmn8cdwKlZzzJnZHPHlmqzXSSbmp5Nd8H56QbWrHtOs67uyaqQvLZHFxzaz
	 bX1JahJzhEcHl85zoFsLDLJkpQGQeFO/5tbIsyag6rcGjr3rZp6gUpqMQCrwDRcjTR
	 Y0djhfeGd9uAjOH+rCI5nCYgs4T2gJ08xJ6Q3/62McVVFYiW29V2GGcZu8CaqVg/Rn
	 1MgSRqNJ6OyXu9EYaUylcXaEMZK6Gt3WhWqfP7fblQGY6CQ9k7UgSaFEkbkj8JAmZu
	 IOTN/NuyTjlgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69660C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170352349639.1810.14294037941874695116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2731cf458c0e868aef7fbf0d69f59ccf6487de29ef2e2d3305f06cb09327faa
Date: Mon, 25 Dec 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703523496
