Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7CE288CBA
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746626394; cv=none; b=Yvi2KxVIZPkdmTsAaWaMEQhe1EjPI/ld47gwptYH7JootNjQt5MDzz+S0TjtQl7wqh2XhU7s9UC0kQxQX6y1XD2710KoJBQpBJgFtT4mFthQVLRQ8pCR8gih7zQKL3ZAhUtLLdRqIuXPdUA1CO6toVdWNscV7iqn3/t3ux4oS1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746626394; c=relaxed/simple;
	bh=C6+0/jq3SFhYNrYVYz2QbwANSNfBcIqCna749XzG7Wc=;
	h=To:Subject:From:Message-Id:Date; b=dDuJm3t38e0cCGuQIDoTU1M+Ap2w7Dk+Qz9MyUnHCuQElnttQLs1f5OiCmCxSUpZTV/Wl7ThkIqA7QE2NDSTNQS1InHH55C9nNcs7S4ax63a60JmPldHnYUEanz/14unagvO4JX9Ee9es4Ixlzre8OXkejLptNLmStiwGfTmr8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZwiJGgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZwiJGgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D807C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746626393;
	bh=C6+0/jq3SFhYNrYVYz2QbwANSNfBcIqCna749XzG7Wc=;
	h=To:Subject:From:Date:From;
	b=NZwiJGgFK/3pqhGo+7IX+YHZIrXKa4NVG+UIJd2ZTbEwNL2vvTqRteJoukXr+K2P1
	 Q8mzQay+Z02UlyqHiuus/qDcB6ZhoX0eUlGUq3nq5BQ5QwZM7ruFSFT01DG5SJawwK
	 Hm4bflYvcLIOa9ryF62En3q4tqr8I/AkP8sLmMCegaaz8RW0fX5X9xOs4xRXlgQaD7
	 8LrFUF5dEAoCgzYcicrjBLGO/SYgXTWP/iaGsEIB3QA7jfa240BpJ+L6l3m8v5X19M
	 R57zKx7gSXLm853xyk9Rs652TRD4U6RuqjBAxEKWpA7BZ/FV9mJDbLrCpgDymVw1Ai
	 FAswXjAVpmwHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA33C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662639357.16473.3013793257935485215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4307709477247d1a62bea8cb6995375ba9553892deebb7295c0662b0d5a31740
Date: Wed, 07 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746626393
