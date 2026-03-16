Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0962538E5D1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773657894; cv=none; b=EnXrZi2Koq0ofvnlMlXquwchKmTGmNbmpFmMBpeqrj7imqgIFdhc6y/doA4iOWkBvwzOmRJHTIqPc2Yq35Xxx1myaBeFJOo3uQUPO1T1dY+ktNgIorAgG7uilpbAxohEy5l9riR+soWQd1LYDgmjMvjyvNmdzGGKilBBJrifGoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773657894; c=relaxed/simple;
	bh=XL0k1c4IjAMOA/70s+BnJuB4SAZV1u8j2pF1UJw93Uw=;
	h=To:Subject:From:Message-Id:Date; b=be1cqrIw5zt2eNRzCWbj0ohhHCjw5BwrI7G9u8vDjnj7tdvfHR8ib4yAgkIWr2Lm3zWW3Bec8ntilp+NT4Qg1dG/k2pNCdhDWjnNz1LLnwxCayQy+FlSz/QmZ3Hpj20ImMGl5zMH0AaBOLe+TCxoSYvOc9Dc/27CK3hTzOqrGQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAKRP2gU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAKRP2gU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2419C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773657893;
	bh=XL0k1c4IjAMOA/70s+BnJuB4SAZV1u8j2pF1UJw93Uw=;
	h=To:Subject:From:Date:From;
	b=tAKRP2gU2/CBc9jXXNaOHytLxMZtUaTi+FUG86FZUQd3IPJ7hlabe5i6ldI5jLOPZ
	 +UrDyPC7OH9EpHh+TvuQ+S4PAzL1NpucHBZfP58jfMCFBD/ujsIAcTIt2dcNYhgfpP
	 34q86t4+EoyC1Y+lQUzczad7/2mQTe5d0ZQPfmlr/zPHWloi8NAoW5Ed05sz41j4w7
	 ABkocQsU/bk23YrAIB7LPq5YWvAxItuswrFVk93lSghDNQ9T5jz0W1JGCjDAuxw8Za
	 RjAvJsLxsuwyh1hD9/4FCXSnx0w1W/ATUKfWAt0bUCLlO6Ft1LjZBMUQnHcOPAqT3T
	 Z7RzZvcIkemXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE34F46445
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365789357.18029.5600321081379241653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f3d402427bd995162e61463445c7935e11a2da95c160654ff2333cc411e432
Date: Mon, 16 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773657893
