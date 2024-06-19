Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C1241C7F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718781563; cv=none; b=ty2FwYxWuWV5YDKGAfZqKeH7VD+PJnd8Jsf/I5yNWyTSaDYPuH+NCk1pPsYvTrN8IMqzN7T5MGOm5lBrZgRvLp1/a9NWgciRNkrJJWBJb4zvMThKVy3CtJ3Sx5ANB3DT0aoUNQDC+2igHILsXK48bI5MguYTPeRqNACGfyJzFCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718781563; c=relaxed/simple;
	bh=1U48dakiO8fdu1rLp3G3tzma1KhG+WdzBoyMoEfFUg0=;
	h=To:Subject:From:Message-Id:Date; b=FrhgOpO4csq8A0gHp/EpG1oojkZsVOoFWGi3UsGcsmgkB7+VdxIgS4iihDuMrz2hRGyLtl5keBHdzXAm/HEe/jxDEzFzxQZIcSAOqkXmdPlCa6XiL/nwWZNcB+X+u9Lrxi/8BICqFtfguT3j0n5g1BbP3MW7XFjukCoW5Vle8Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpD56B/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpD56B/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E51C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718781562;
	bh=1U48dakiO8fdu1rLp3G3tzma1KhG+WdzBoyMoEfFUg0=;
	h=To:Subject:From:Date:From;
	b=WpD56B/6MqYvcOX34npPy8iZH0Ol80tpOgtZ7iSe/mTT+6axTL7J5XDJ/TNAwrs30
	 9v0NIpo+xv6bEFfXdc8M+++i4WVzqsP8S+ChqwHGLEgQbtSmHdTIicXhX/Am5wk/t8
	 5ILl2xtOzrXvuP3INwmsZXlFSz3zZ2yb6iTCzkamLxxyp8Lq5fmOI5sct3vq/XSmmO
	 dMIvl7mC28R+yZWivJWV4nS2xi+k1yPA1s8fczvlTjB1CS0dQQXmEJa7uGcZ22MM4N
	 /amvv+5PcgSnmAEZozwwEe4v9KOp3TbHM3fii90ihvxFT2vpUPu0tvQliTT8TLUjEo
	 W7lPrRVlNTXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F56C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878156281.19085.1855299897437539139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63b1b78014cf908944dd6ae4279a3be552d43753c147df9f427d4cf29199608
Date: Wed, 19 Jun 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718781562
