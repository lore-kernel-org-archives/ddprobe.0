Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3350720F07D
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746696594; cv=none; b=u8o4So+0CFYEQWDJaLy/V4XMsxcp9kq+uzHTHTMUPw3KmJpEqeKdH6kcPvhYEDvDBCaD33HFi+b9fiaUPtRQcA9HmB4jPgTvNkAYA5I2oHq6NftSl7vrXKZuVJZ+NDXFHvPGnKG6irKyqOU/FT8QFG3K9Sy1eD1Jh4FK5CHQJY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746696594; c=relaxed/simple;
	bh=qDydMt6qMSdtNwXrwgNqpL3HolIVoP2jchSkrCtAtGU=;
	h=To:Subject:From:Message-Id:Date; b=HSjE4h+D+RKuw7Gnx3t1tFIL/O6Tqb/WRvHyim3b60nm8DSzhSlzdDBBNEctCh0tLxm/brq8kxokJgeTHYJ+Y8ALTIbK7H2Zo8rWJMv9vYLzZQ64jIPPukLcUgzQ8X1Q6Zfv/E20l6zXSNXtl6R5fe6zZ8jxQ8VzrZb9R7P1ACM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5GNYl8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5GNYl8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F84FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746696593;
	bh=qDydMt6qMSdtNwXrwgNqpL3HolIVoP2jchSkrCtAtGU=;
	h=To:Subject:From:Date:From;
	b=P5GNYl8QpDhb04hVQfn+KEX5RHk7xK+bnvY5sh22Ks/n+RxGvXe4NHfq886RyRJfP
	 /5KMGxKyZ9d3puLIYv76jefC5pHmO8ecOW6dQ8DJDIFk87N/4/CKVIav+qHDwHupJn
	 3NoyEkgNXpGZ2SkFZ3DVQhA19KpksuEonKuprG5gOhX7D3lIE9ELsGZyDP4SymavEy
	 QPKZUwxtpRsVtDOq6KntBKQ6Qyroe6PYAtxFoprnEHx/x7IFlcKCTRolpA+NWT95aA
	 BNZqTDw6T/MPZWnSKfv49g/WRQGKN6FbMDiKuyyRM0Q613mcVyYHEB6xpVT4K9pCSa
	 LO/raAu9JZE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EDC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669659357.25573.5792308576724818136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc3bb27098c5a6b761999e1b9fd9dde566436eb731204070232c6d47e292872
Date: Thu, 08 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746696593
