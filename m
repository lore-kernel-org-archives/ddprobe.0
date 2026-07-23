Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842FF352C28
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784803234; cv=none; b=XFKaieEBh0ZW16xTeumFwlESqao5WGe8fqHFuS7epxXW6miaeL+FhY/pChE029Yc+r8rbR5pJVjF/lr1yyIyHzPAq6FV8p1YHMPWg6Znho84GBaIaSYRuAxXLpqTreHVZhEYW94O+LeV8FoygQNVuN93YA+d7lEV2uN6XTBwPqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784803234; c=relaxed/simple;
	bh=MgfhxPngb6pYUt26XiAe3idfuCgNHIEuU/liAUyrB+A=;
	h=To:Subject:From:Message-Id:Date; b=owntSiiJ1pZc6tzYY+Uq57hQLv24ccBSYC+Pj9siQrBCTxcygh3kPuNBe5l1wvIWVhaenhX/5h2k5FSO/n6ZwsWEkD8JeRSgD29pSPiU1iQP6BvxUYXObjowK3HlwnAI9PiZZyI09yrPy5f4wF7fpqTT5c5u1M3R8QFMhBSMS54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRWDlVgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRWDlVgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21716C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784803234;
	bh=MgfhxPngb6pYUt26XiAe3idfuCgNHIEuU/liAUyrB+A=;
	h=To:Subject:From:Date:From;
	b=SRWDlVgSu3EYtEBXufDc+gUbqM+cXoJBj2LDVkRvVl2En7eDB6IJBFrwhJvaD8c5U
	 +DsdRrHKWuC198fIk3tMPdapkltV0WFTDN4EkwYO7fQQVbIIIc3tE9I1o8Tfjga/y5
	 L9LLtcAddL5FIrVB6Ex78WGqCZZbi1Zz0xXYmpSkFdJwFnNgUsjyUaf+bM7AgZIxa8
	 TLxTWfd6rMN6GrR5MAFQlFIkmG8sjabDZ5zk7QwKQ27iCJlZeKrp1MWsgvumTY9s8O
	 s8UjPwSYjfFYq6THRM6UL4af5URJVKVjT37Afp4xmBUWEB2LJHG8g5rTclMGJHduwn
	 ISVaW4tT9bcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94FAC531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480323370.3305.17913734873252008908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2712965396b5956c08d1ca06e6c1c8973a7707033a94614c256838cd339afe72
Date: Thu, 23 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784803233
