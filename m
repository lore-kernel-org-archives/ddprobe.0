Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124F223B62C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775872654; cv=none; b=Xrn6ocayH98tdfxt6bwReK/ey5Q7E8W9E8gw6o6J0PwGLQFlFI5NeOkBhgvnQnT/JUbwlfQ9BLHCcxTxsG2rUo50KPJeaP5oi7QyUN5idYl+XtYd57ShcTXf2o7lmILTLsfbid9AoI+4jYrXiruF5t6qo1XxRsMPE+mtTPv/oXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775872654; c=relaxed/simple;
	bh=189RBfQr6jS2PatCq2rGtlAJ+OX9zPLd/D3ayLHEwRo=;
	h=To:Subject:From:Message-Id:Date; b=tYNc2Q6IbKC7yfCb0J7PS8Vzo1T7onq0Z0z7gl1OCCQZx3spHfuUcPLDXmT70Sy+kTd4xoMeOrMe6fEwQtbaaUd1gjGfETSwFhONKDnAkfahgqPig0pQR0/AtpNY5dhkCkFeeLvTLqq2wRPf3XvrBiX08w1AWWkkS6wuYCjk67Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL0KBOWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL0KBOWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B799AC19424
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775872653;
	bh=189RBfQr6jS2PatCq2rGtlAJ+OX9zPLd/D3ayLHEwRo=;
	h=To:Subject:From:Date:From;
	b=hL0KBOWh6kUKc8hsz4car4n6VatUPRRSs4F7XcU+uB+ouiCxS80uYGNBy1lPk+ASt
	 2gvncLtyXqoIsHCJLiTySrCzfHmV8tqwudsgpyVpE6v43ISmz/vChYC0bj8h3eGth6
	 1adVkc7xZ/HPXLeG/sJGqNBseE+Boofh2H9gI7zLhmRoy9u+0tLMrHBMtM34DSWTTh
	 MwfGOHC6C6i5fpFfmNUyBvSOLAeDCovJ3oWJ+iudU0Ffd26gF+Uz1ZxzAAMqnkt+HZ
	 n5UFkShrJ6ScH+nRahCNZSjOjvzbzgZst41gT2rEokE2HFEAsaOSsXNi/AhlZQjOXm
	 deYuJmgmkS5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B35F45A18
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587265368.22934.9952055217886782268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ab63beacaa91e89ebe58d2f544e12772893dc55bb56cca8339663ddf260824
Date: Sat, 11 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775872653
