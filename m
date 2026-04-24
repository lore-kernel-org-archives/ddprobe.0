Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E2179DA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777012054; cv=none; b=mY2Uk2VsC0xx6HkshfpvKt7Y4XNZBpztyZha8KnhmlaFjdBhzhtSxwLjl9QjggFVXEoZmNyF8S0qZKqLEfp+nbgbSJIRD82JF+LHlCIql5mLfR+BWkLO4CpBipLBTKNqYzIZv5eFdiBLndDsYi8s7HlsRHz4c/RxQN1KEhavee0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777012054; c=relaxed/simple;
	bh=jM1OmL5Wjnc4k65w1ruqaibT3JUhwa3IXX34s4PBcZs=;
	h=To:Subject:From:Message-Id:Date; b=u+XUrBO4Aw1Y38frkILlQqxbkciHCSITWufWecnXW7RwTAvXJ0ifHzmYGj3LEblUUkP+G2yRxsVaO/Gk2V/P1EzLTitaTyrflsgGxIsPWYttwz4/sgkWVX0WJu8FBZoUVm1Ux6QfJKocd8QVNH57qogPsazxpHXgSQ6M1SdMWDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+EQSLt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+EQSLt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC433C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777012053;
	bh=jM1OmL5Wjnc4k65w1ruqaibT3JUhwa3IXX34s4PBcZs=;
	h=To:Subject:From:Date:From;
	b=T+EQSLt8nIDYEAIGQE9+blrWdraPPMixF5qKpqaigftZq5/A6+m+NXUpLlElEgtow
	 l3XttW/GAnn4S91f5eckv9WRyqaQA/YQUdEeKwgXhZINdFDsIvcVgGp8TyOkznoLif
	 stnKx5AN+fFmVLqYrc2P/O1lOXTp7fb0D6J6CYoJjA5jTcziNJtHtaIOhAsZV18NER
	 xnfbFwDJLUU8R+jo6HTBHr87RVVJ+DFhCbDins5gBFMOElmr4/vOzoRJB4vkypzpBm
	 N1qkkPm/Tz0xuJ8cv5VjeduXXsTmWW5AJXPbz7t5wfeEzf70O38bWQlnVNS6UvEnPe
	 VwG3POi9/674Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E4FB44B8
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701205368.14425.16557297775050370616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952dc139c71def8139f2c6dbae593ed2802a6cb67b237fb67ad69265d98f5997
Date: Fri, 24 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777012053
