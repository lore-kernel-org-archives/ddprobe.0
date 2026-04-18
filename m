Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16560DDA9
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776472654; cv=none; b=pkkCMqrzTx1Wv5/vJeduzer4rQvKHsEP3Na4R2COF3Q7IzQtRlkjvv7pPsiPCwEP48/K6AoKTAKivSqtwIeUL7DH03wyzaHDR4kEvNWEN/5mgcju/FngitLG1PHZk4T+f/5do0jX79h9rZtMykPqhvFeyKLP/nYS3vqbvb18g7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776472654; c=relaxed/simple;
	bh=Mh+YN3U7cTz+aeKmIBsNhqkkKjQWzEx7Ldndx2NH8P4=;
	h=To:Subject:From:Message-Id:Date; b=G7TYy8+1O/wdCyJmOlMNicTusFbzhWH1IjAdQKRZ7w6fDfxI6qzo8rcHNOPH5mHSeLbv1lHiUvLA8UerbORpbDAzagcwPu+ELghGJQyHrFI9ing2BuOh1zr41eV9ybcgAKlVkvsNyA/DBwB0znxmrGPIQ4bEUca/Svqwepecxcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4anIGG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4anIGG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF03C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776472653;
	bh=Mh+YN3U7cTz+aeKmIBsNhqkkKjQWzEx7Ldndx2NH8P4=;
	h=To:Subject:From:Date:From;
	b=k4anIGG0cbnCQOdnrR5qxxNr00Rrvn0PrZcTFs2QVGlxPpwpfq/4iW2MOcQG1Jn6v
	 LDWvJqflHnSa7mVB8JPOLw0fTa/qWs618HBFbP/n2UjbbXrtPhExQrDHb/WHZgiTzW
	 zJOijnhgZF82bNX0wsRp9AiJSWgPXsgH8jp8kwC+Dj4DXe8I8GrAuIT/D+w7VP8Lfm
	 kYHqx/QFFhx3rtSfC38BoG1qZa3aAok8ILXdxxugZAKCq3aPndMrvc1gLs1MdarFdS
	 tNC46UzKtqHk5Mqr/92AzoS/Z6JDX1FBm7rJRayQW626zz/Slec1pHl/jc53StwiZR
	 Xj5+0LAXT9vpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA4F99C6D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647265368.7473.18251175734142349965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aae153d0fcf7f33b3acf6dc3657d5fc660d9020b9ce63c658540a4a5a452460
Date: Sat, 18 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776472653
