Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472932BD1D
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734747954; cv=none; b=Y3ua3DymQsPigfOTn7Qid0zdaH6fIIzdktQczAn03pUjgsU+3awYSTyvZn6ecEB03iljJZCLCJ1voQBplqm+siLsZXmRcQqjDzU6/1gxJTMzVvmZM23C3hmruFv9zPgVjG7CYMqEFhS8x0N6gPnSB+Bh+JJAXzF9t9+xM1So7CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734747954; c=relaxed/simple;
	bh=Hh88a3q2T7em2Ogh6IO7Gnsk6BJ09TLQTS8MNgVbbWg=;
	h=To:Subject:From:Message-Id:Date; b=rlBY6f129off0buBoR9j6oRggv4Fkzp7SThoKIMdR2AHJS8rXAjRJHS7KnX2wu7Pzp60RNPfg2K90D7F5wbuQy7mjaTId9/YCgAToe3Hg9UeWcP39o5nFux6I7AAGpVUrwZdgrK1ac7GTzeDbmHNW37yGhonW4yL0GEd3YoMRVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kxg/BNcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kxg/BNcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6B5C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734747953;
	bh=Hh88a3q2T7em2Ogh6IO7Gnsk6BJ09TLQTS8MNgVbbWg=;
	h=To:Subject:From:Date:From;
	b=Kxg/BNcNtEXiBYFW0Ifwj4OQ27DGhWCwLLPoNC3ZM9HqDrY1pPyKp6sS1LJ0C3f5T
	 trkGU3px/fFM4PHE6R09gJx2m1HMPtA2KKk956jo+b1df0m73sg550SGdFQrL3Ehd5
	 s2DdDH3VmOJa3uFkc9a/3rvPXxAlP6jGasBF/zGagiLVKeVe1/Hiwe0KZiCpjw6XFV
	 eoVnVkryg/MTivKW53LgQPHv2Brx6sC0pV2pmiORhxuRxTGdoyUvRaUrLr/8DaThIR
	 TYSkdqUntHsimiEl08AexEq/qGIQLk9aF+A/csw2GwfEei1d2Bh60mwIURw4kfwoCv
	 qaJOROPCebhRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99438E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474795361.20917.14711437969022335961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f8af33dc5c2fd5e04ff8679a530e200a65af34056c8350af99a0a06c5b06e6
Date: Sat, 21 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734747953
