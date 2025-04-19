Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D34213BC3F
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745045394; cv=none; b=S0dAKw+DsPIo+hLfKGrGQhcX2778ixCWc8eiOWV42Z5ANET27lE+pavpaYMRpRHsEXvAQXjwJP0p6yxDy+D27w5PbQdRRBDoVYM+3B7JPf4fkPbPlc89CJlQ5mKe9GDn6/QJwRZLPmSPJ5d87JicLav+3lxDhgp0p7jxDvdBUr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745045394; c=relaxed/simple;
	bh=Aou/kElf3FnuczkGbKcnT+ZoST9ElIT9C2X5TaGUljY=;
	h=To:Subject:From:Message-Id:Date; b=AnlpTmNEze7h7nDUIjr1DpkjUXWxY/gbhi+C5QJzZOw39fEtEn/lN9QtDPYvUNjdKC+8QtnLJpAIkS6xRC7o3fzGRV6xVq+b4me6bqHMuorFbYjSqpyT2XXav+1/KrmOt4w0Cz68zeGxjFyz8m85Ggd21Xf502ddHNrPLqumKOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDZxtfpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDZxtfpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DB4C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745045393;
	bh=Aou/kElf3FnuczkGbKcnT+ZoST9ElIT9C2X5TaGUljY=;
	h=To:Subject:From:Date:From;
	b=PDZxtfpg5yHPZ3ud0YED2EYG1ERYtbD/7lw9WK2Yq9TIBIaWN47j+BYAyGSwVQOuu
	 +iX5cO0qwurkZO4saM0dBWpvUxdhUvv33lNvasYZIH3+S70KL9OCFhnHtzoyLZAvMN
	 OXLbfmnLVLPBBfX2Hj/8eZaBTnQ9hWq9IxtvEeioMF631lBiWaBJjf9rqmYFyXvhi7
	 UzKuotQW/ZDtxtf7xJAF2Qb3ICjI15op4tAfy/rCAeZd3GemJgrI4XkhfpkHk4zHJs
	 NFN4eENB3NwamKRAT2HZVXg8dS7jnqWOpd+A4WNYBUpprHntdUUJeL82Q67SLUXr5S
	 2X6ejziM0cGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2FCC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504539362.5731.5620692890976532841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dc981667c80dd404f946c44c2bfd929e73e5cbba56eb883554e149447ec08d
Date: Sat, 19 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745045393
