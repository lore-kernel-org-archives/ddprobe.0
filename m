Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6797B7BB17
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720598183; cv=none; b=Ltmj9hrfS5t2aK/0eJus3QCbYSVPgx1AxYHtRfb2yMUlGpq05K+0RorhrMIY6u1E5YoJNhGAdUP3YpDavHFCj3Oz85GdQeaVtpsyWyDzLLazVS7JxEpRW95m9gOuxFRKE+6W6Wa4QnXEWS8TCcmNlUjqGy6yAifR0fQzqnqgNBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720598183; c=relaxed/simple;
	bh=nZ+x4hhG8pzywAJVzQr9VQUBfNpqNLpogooubLjzyng=;
	h=To:Subject:From:Message-Id:Date; b=iadjSrvI6jIgs4yqOfHFR+/Ngfe8x2N6v0vXy9kjPpV+e0cpqx5+voSZw2PZkjJdD0mccA2TDa8fWdNFhQGXTY577E4Ch5+bVMvYW/KkpBy1I0m8hTKdEADUVBCpmeTy8uzWsw/BggFIx2b81gqqGSTdB3RsOOskUZJ7W7qqG1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZBxPLG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZBxPLG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D728DC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720598182;
	bh=nZ+x4hhG8pzywAJVzQr9VQUBfNpqNLpogooubLjzyng=;
	h=To:Subject:From:Date:From;
	b=ZZBxPLG9cx41c/XhPhMqnaYyQAlCf6RRCEYTSZ5nLgkrI2s2PZ8JFu30kELxvOxKw
	 +gcR5g8OUuVDQfwyikyupGdgejhqEhro0EK0FWU4XmRHJR0a1wlL92cZokHY3noO9Y
	 C9g6LXdu9jKfgBZGSKiARi1m56NgIed0b7oAAobrGF5C7J5QMgLd8m2ayv3L4Fon+r
	 m3+H0Lvs1Qab8tI9wbxBublCQzccY0J2YIrMelSQHcpZIFhx13HN8jd7/mJ6RhYmpQ
	 uKkMgkLIpMwY9hQdT63v1b1jzfeB1uujgQLs/lTV5YT94e4/H7IQo+6zRq9iI7mw0i
	 c+JdcMPhzFzMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB51EC38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059818275.19557.1233554144650049608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8935487c5722f759ebd9ed91c1dcbc0339329eae95c9ced69c0494085ff9bcc
Date: Wed, 10 Jul 2024 07:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720598182
