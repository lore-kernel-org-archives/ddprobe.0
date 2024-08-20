Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABA21BF58
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724126754; cv=none; b=mdTifAsImOx3UfuHRkOtaWJvDpL764Tk2w7jyMuVGxC5gtGe1FgqcKydufEC/Vgy0kLk8iPT3P2DkRW9JgGEiEFc5/o5EF2aOWUdOG0P5MLymer6ue2ZaIARjikBNrUSe/62WBFRMWZIf1Of/eJx8TtDK2UhXCMoSLXJTZiUZAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724126754; c=relaxed/simple;
	bh=z6gXdSpLw+abDfR8YT+waKUqmhXkFE+wICKwdNwrqVs=;
	h=To:Subject:From:Message-Id:Date; b=pvrw8o0omLmli+FMAmxS7GvIMvekNAnKWWl7jk2nLn2mCpMGYUUkrI32GKH/6J+W0dxj4UW8ztCmprsXQB4AtIeabnxhkocH2twg0hivaH1iqSNGCka4aXjhf+O5QY8lx4DeHWAUkRosTSmih5yEDR51hXqoVDkzPBjzLFHfrA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDKYsMxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDKYsMxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC32C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724126753;
	bh=z6gXdSpLw+abDfR8YT+waKUqmhXkFE+wICKwdNwrqVs=;
	h=To:Subject:From:Date:From;
	b=ZDKYsMxkJdXx0+p+5xQBco+x5SascujmziicyguE71gk7/anw4IC67eSIhHB7urrG
	 Ro6Q7ewoSSkQDxC9r50SRdQSHgEP+5KFUBt/spPtCJFmLsg8HLGAQHJVECPaL6/iA5
	 vEd+DDcFKCdXORtCH9fUaYFtO/z9i52RmC/EwfnmzjqcqObr3N02YtY4ISpzRB1U5G
	 +T5/DHfRkOc2+9b96Qj5l8LfWEQ5VY3+SYSzPtPVEvNVIvSt2px/ONGNyJ+cnXapsE
	 VuZl0ZVPVW8HwHopIvw6gm0CxPAK/GbtmJy0xW48fhfC+gO/qrsBqSylnlMc81mZej
	 2MAQ/8Bl2L+hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EFAC531DC
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412675358.23791.8328759418667385228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38ffaa5710199c940b028e05f166757eed19fb337b760725622ae8674bdf302
Date: Tue, 20 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724126753
