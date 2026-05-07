Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44F5350D7F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778192853; cv=none; b=eQK98QrMLkvK7zX7OQhff9cZ5W2coXj5BB4L9r+G6Z6xBnmwQZVn6f0i96eMthK1q8bgbiMj11wscu/L0LYzaV6HjTnc575VbyfBEng5LNqyvbu7WwkYQnul/3EbYWp9dB9dY3Z6XQXkO2MA59lfEu2khclGKTdQa3VV3Ib03as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778192853; c=relaxed/simple;
	bh=Yh0DK9+YPGQD4hB52r0GYyhxokJDusXpZUX+8Z2pYq4=;
	h=To:Subject:From:Message-Id:Date; b=tzZV3ByBCJFAeEMtSzCs6gN+DmgvB0/0eIlUtok/kHZppoaDveV7onfmipl79Pc9wLb49pMsD4v8nWU0gTLxo8u0i3FpD/eV1gT7vGMDrc7cl3ymyQk0A/Wb2e6Fvtv/qWHhYGLB8eUoK3DbexHg5J4yte8fMgGMObqPhxjK5oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocswG7MW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocswG7MW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C89C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778192853;
	bh=Yh0DK9+YPGQD4hB52r0GYyhxokJDusXpZUX+8Z2pYq4=;
	h=To:Subject:From:Date:From;
	b=ocswG7MWrK76GlnGw+BCZFFbVel6XqtiZGEJD5pC0+AhubBEdSnrtngDSxcPZGgub
	 +uhlqb6/8Q9WpEXXY2wZrtQuCou4IDWGhNE73ov1Uz4Uu1kq6+JlASD3yg97PQbbr4
	 ZE6q01RAJ1lRXJy0cWta3mbu6gzpipc6DuZgXcgqs+UHOOdBZyL6cRyGfYel3kMUf6
	 2wf5Sdr7TS/8wgNMhpbkvos3pxXFhFj039My8+DbbRRPS/UutBo1m7jw77aYF+0XYo
	 GUOxcx+u2IQFoRrKvjcEr9vJukuSSA7cJWmna5eMbdBq64qon6nDSn4zAGQZJjlIHi
	 mTsMsT9+g5YAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA56ACD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819285368.25752.12589581458540689006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae747744a469d9accc98c69ce2a56c41ed5482d24b6fc07e49255ff3ed3f255f
Date: Thu, 07 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778192853
