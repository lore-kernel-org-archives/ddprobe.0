Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AA8389119
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776679054; cv=none; b=uGfwUch8I9IVlkFy7ZzvnY5yteY68Y67zXnaE9LQ+SInie+EQrqDydsTThJ1v/fngqaomThVbx2s67I1vYQHQlWzrk1I9iNc5vyVnC7sDUHC7XqsxQ4nuwRbBjKrwfVm/R7Tp0HtPPDX9Y3JzJriOsIRuFrR/VW+XEFwAFwI3dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776679054; c=relaxed/simple;
	bh=15iJsh8gR/pKlpyI5xeKA3PjuCo61z6G4Wj5RnUdI4E=;
	h=To:Subject:From:Message-Id:Date; b=s07ZuOELylWvD7IVfoHHmgxJ9JsUuiNcW0zF7zFhLkNge5ItFMiI+Fbg1inY+lW1IRsifhmlQcB3r/eRufA3oG5/Jhsnpsx57tvrv9IIHfVJfVTvxoty7ZghZS6pZhHM0Qyn7kXDoPdsAGj6GHXVAMZ1wUCtbEOMaXsq450lIQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXGs0aHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXGs0aHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2342C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776679053;
	bh=15iJsh8gR/pKlpyI5xeKA3PjuCo61z6G4Wj5RnUdI4E=;
	h=To:Subject:From:Date:From;
	b=HXGs0aHrbwlhuU1mG/kIXJlD6hISVbYawbtuR1BpCEwfAkaxglkzfhdJWB8hSv737
	 G0Vr3PecgxAnr2vvjKVYsc8TQHYnAt1idYZp/g5udH3lG1nyu5TxQQsJgnqx7b+laS
	 FqcjiKESvEMru3jr9M4Q4MICACn/BPEY8xn1tkd0DLQxMqMxsXEBIH9bUHw6LdMtVG
	 mXdpjAFuXZfFqJlPAiQj9rx4YQWS9Sj1nLsllxtYDMOFYd11/pbjwPjd3ypLwJiBlU
	 iVwABWhvyaNqJv/KdO01IPRUqKzpQ/zFquWubTx7ITOLiNgfcbeSRbPbocjg8WmMva
	 183dmz2ZVEQOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3884F557FE
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667905372.17473.515236507090207029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacde061546a61ed64dfa830f72b32b1ed562dcdf7eb7e0c6a497e065ee249c9
Date: Mon, 20 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776679053
