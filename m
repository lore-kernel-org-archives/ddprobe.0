Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6A9348460
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762828794; cv=none; b=aBPfotprutmkZ6rCwFgz/eWugr1D1Ojn9cvpdjgUxJgRWtAZk6Vq+gcaZViLK5ImWCOzo4kSLi1kBuZx3IG5LJ+AYqkrdyB4XmnK/bTxDUcqeNF1p8WNZq1T0r9IYMmUkUxqb11mi5vOF1z3iJjJ5c+wry/lGsEPUI4GMbpV7zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762828794; c=relaxed/simple;
	bh=cd/vhcLSGt+PJnH57MQu5nlxqA6LgBQxIuTu9jN59WE=;
	h=To:Subject:From:Message-Id:Date; b=V/B4Hze/vNLRZDvyptAuecItPqzi0UbWCTa/Nu7mRi7b9B6YWmJxosKs060fW837LgeT5yREQZUaXVrs/vjz+4eqBguMjW/c2kpf8/4BAJyhsn5AuW+DmzEA6KlQSjyDt2nt7fO1TNgw7HnuXV/T8nEvU+1Rn+VtQDgrgXFju8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9HMuNc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9HMuNc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B373FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762828793;
	bh=cd/vhcLSGt+PJnH57MQu5nlxqA6LgBQxIuTu9jN59WE=;
	h=To:Subject:From:Date:From;
	b=X9HMuNc+7YjQzukVo881f1uVzVbYEW9y4lx7G7g/IknzfqwxFL7LOoy9KmxKCvs0B
	 FjjMNf4HeuvM7G7GIHAPVvth8VlCBETNeixqcy8E6d25D8UFhEShrcaQrBWQ95DYIO
	 fhqcsa4KOCRrwGxFYDUsCsgD6DmzmmrPJf9gOnd6bJGpN2QTZXm3durC0IXzILZ/WL
	 u+e9a3boJWjd6YbIREna+eL7QWMsMBClaZwBxFaQDUsFS1UKMMFXzRmEaG6+GqNjDQ
	 g+gR+MDVnb3rEm7q4HTbl4RMqW0rnTQ5Bl/g3Oh4rqXC7la6BnKByAPP+bDcdY8Zzw
	 FYyJyrfH/9qyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24DDCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282879363.19387.5299142123459206198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c582302a7994f1450ec5d896cefd894e0709722c0d1ee18382a5970af8f8561a
Date: Tue, 11 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762828793
