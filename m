Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBED2459D4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772308494; cv=none; b=VhVjJJ14bIb7Eg656aWGwMnG7J6s7/t1CJLRsWeW2jcsC6Gz59ne1UB13qZZjVHJPuE5K+ECRnODeIRWhA49dgEUtHMQRDfq9IgF9hX/XUAO/hcXQ6EAZaPoI2DkSXonODfAHEhFsZ+qTJlx2GXFWEr+yBI9oLJ2BHj0cIMwLGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772308494; c=relaxed/simple;
	bh=r9cmnDwjOIeyDZ/NlcGSCpg7J2yyOhWBEWl1qHd7JDU=;
	h=To:Subject:From:Message-Id:Date; b=cjqCDkxA3oCuPWJ3D9lOxoOqrX1A9uibons7WoKLYhI3b1OIlapkDQdxADCpwhyUMgiAntEfVtAWE12LdRJOB9RnJGzHM+lzRxophFjQD138AqoJxKqP5/9PzRJRpWbJEk5r+iP8NSIWFGJmaKAo9zm3StHmaBxPn9rRhywQv9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+BP8o8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+BP8o8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6D2C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772308493;
	bh=r9cmnDwjOIeyDZ/NlcGSCpg7J2yyOhWBEWl1qHd7JDU=;
	h=To:Subject:From:Date:From;
	b=E+BP8o8XuvVyn/BH2R5WEMGJWRpAroAask/ELv/6OKksua6ihoQS8I4DIJhEhfXTo
	 j9sUawQ0jSDblpMTgFE/FLNY+kFCkrUjcxKJtyAJLriL7bIneiVJKU9ASfJx2AFvy0
	 e5HlkNFNn+3iWEJ/qRs7W5wl0YfE+fKwDqD9xypw1DvGSDmViL1yyl0pfp6stD/7hl
	 oZtJrsxzGDGrJ9A828VFPMCSTvCFeIul+jxHE1An2CW1sR8H/vrQdMYbDGueR6q0GF
	 sV/ipRNE4oi6m0gck3pSQhtXswI2LwehjGfGawxrn8a210HRdSUYKRhJfProXGgTlF
	 V6cMfF22cnD/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC40FEE4EE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230849357.1198.17929752014588244722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb1f7b172a3463fb2a3a05f03d6757612df4c7e98ece0887a34d1798851e562
Date: Sat, 28 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772308493
