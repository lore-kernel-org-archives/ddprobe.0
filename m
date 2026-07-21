Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC162434E30
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784618914; cv=none; b=ITBY5frG2Ohmtn7678412bJ8dKBXwjxgFBGMzI6b3Y+4dLGsZZDGKLGOQqvxpH55OobTnXYnFlHquu5VpDDgQsykJpMfwSuu2Qra32MXp39bCpkC8D8N51dRs0BjAScDzf4TCcLJsz3jsby1YnhUGo0ebmRn4eylZoPtTQ7wuaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784618914; c=relaxed/simple;
	bh=zxGA9MhEB6eO/ow3qi/EJU3IxGMPfTj9NTc1gn3B+ZI=;
	h=To:Subject:From:Message-Id:Date; b=IlWojb2njWhJv4YipY7Dw8RpZADNB2E5zEU4zh+IqoRxiG813m2lXFZdipo0dEEy5XAKCkrq1C4XcAXyMGvXzyGWLKDvrZkJxCgX5J9D+kOzE9wYlc37B99CPumWO4HbZX34/gOmzuknUVyMRoqjjMeUsvUGL7C56Ra18Jhd1cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAW+4oZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAW+4oZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A483C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784618914;
	bh=zxGA9MhEB6eO/ow3qi/EJU3IxGMPfTj9NTc1gn3B+ZI=;
	h=To:Subject:From:Date:From;
	b=RAW+4oZhbeoeKLwJCXkdsZPheQ52S2yHO/fXkVfGYMppmwZkq4McK+ylzMdQ1amtV
	 rT8EJgv6595Usk2NQdBLZcjDcUyVs8fvxh0cs9x6DcO229BjiX3fYB0Wg2+P14E492
	 FpmVAFACMnNi9SyQouKVbaK3kMBHJjVY0RC88kDA5zhb0CPjdsWKLDH4G30pASq0KE
	 +X+NvICbz0/MNj3vtxVeUMz2mFwbnA+URJqTkCIXYCaEWmRF/sUPEIlx50UV0g6o3Y
	 JP1k2WVEvAWVTU8Wy2T3e4ge2ALMhT2nbxKrLYeQUz8fq4R+u5nZVNSvdJGJcqhJG0
	 1BAyKCK/D+9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00A66C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461891394.14548.14787894521338696121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bacb7ddb3e77361b17f18918f6d3081c29600106cc6a34489e46f578431dab
Date: Tue, 21 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784618913
