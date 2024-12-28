Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C74D2111
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735414554; cv=none; b=uFJvw/KWStNaP8CstEWXyOMTofyujmNUW1HxDTrReFTsgf7VM84rGEw4MWj86vhCjX9oyh9RJ6eBIheEP2kYNoHAJkirtFWa1nYQdCbnN34850LjGjr0gZ17B0w1FpGsIIMXRgsM5eAjhxzawR6RHYM2Fymw7tn/ww1gY0vSl6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735414554; c=relaxed/simple;
	bh=q1Z3lyYBT0nGny7y9xQ+FvMqfiz2KbGKwhfKTJVAoXU=;
	h=To:Subject:From:Message-Id:Date; b=WJt8Ael9Y7bSf5j9kcRuMF39q+vYbdzS/kjj+OmNQSn0Qw3rAABA/vVUUJEj2MvKvtuGOO/KVfJIZPu2K8xEwVa3OWRrXEmX1axJgzekMtZw9gR5H9sFsRpZ/oVhRvX6UlxpGaH3e1/vvpo83tmhjOp4HzBENR3q2JrG7Bx7UU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fL5oYq+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL5oYq+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50EEC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735414553;
	bh=q1Z3lyYBT0nGny7y9xQ+FvMqfiz2KbGKwhfKTJVAoXU=;
	h=To:Subject:From:Date:From;
	b=fL5oYq+gTkYFi1pYH9pWKqSFYucqsio6halrj5xnbWc+MXtxgTd9hp8t9z3UBzLnk
	 1euIg2qiWpLmMJX3UC0vUbp+a0Tkm+ZWnZBzzTFqqnY235wtfyJGQ3KzDssQ0frWLi
	 he9Wis8ypshsOyrX4kTy2FSPuedVT/mQtDapMFXm3/Uo6fg3rzT9/OaQKpbMAaq90f
	 mzT6TySZBEm7ValG6x43rglqlo0OlgHnq09NwFRl6Nu2RijOacyFv9+9GoJV+d5a00
	 s7HhbEnyyhCE+7ip+muKwZV/HxV/rrhfUp9AppFEZGUJmgBK1Ds9ZenvxIe8F44nHQ
	 eiXC8ryRXHe+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A113EE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541455358.2490.2648571678207692189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adcab10f131b79d2d7f176d8e893238331d6786567642617e65ebf870563556
Date: Sat, 28 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735414553
