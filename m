Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3450980C02
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724448354; cv=none; b=UENEo+/O3Za98/KXOkqkRHTeFYpN10o3X1hDm5zKP15gEXQQvWnqfUVWQr7KDYkl9ozLKPic6xQ3O1CgCmV+a65SVxM6z6ZiUcjJgaoNvlKvGfMT/0uaFTlmrMOvYD6OeTY9jP76hjc1kDUcBZEpE0oRRCHKEOBpzYVv1ocXHt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724448354; c=relaxed/simple;
	bh=x2Q2fOU+zx8RxTBThyzPc3hSPMnPy9psOvYiNK1lVOo=;
	h=To:Subject:From:Message-Id:Date; b=A7h/NPEJ3gQAGd3JSPh3WVjgnOWtTJefiigb3FX1YIQ/yuzrPZ1E8RsksjtH+ne1qgL+jtxigwJWf3a0ZFD4noM748oUGRKPqC33hVx6UAoWsIOKc5meThDE7NvXuNSjKewN657hBG3x7s1xnvx0X31Cxs22uq2pgBVyDT/C9/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVaRL5/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVaRL5/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0624C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724448353;
	bh=x2Q2fOU+zx8RxTBThyzPc3hSPMnPy9psOvYiNK1lVOo=;
	h=To:Subject:From:Date:From;
	b=RVaRL5/dRgx8e/cDjXjziFwnm8yU16r4ILSben39guOyvxKaazA1RZekr2cPMunBK
	 ecKsbiH+VFJFw0kLFPPejKErXDMghDlczjHUvr3q6TXvRonabDW7NUbmx4Jv/qeJj7
	 RcG87WYhXMkzHkEo3pxN0Al+7sZnZS54rYXksRpRkg/Ymx8asttkJAZA6Ascstiepq
	 JCiIMEYOcs5Ubnhmy/0jvhDoCCxF2k06E9T7pHO7He8+Yqy0aRqtEQqidMijWjN21O
	 zRmm2PWq26joU8EzqHsZTElrdMnRwpzPAjZEMy6dr5WQ46q0xNqKZ9lt9u+bhU+5ck
	 THjHsMel3XxAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F5C5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444835358.5747.11698526489694283199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bc76a243cf9b0d5c226e6ea689821262167726564c831c370f2cc6fa9cc484
Date: Fri, 23 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724448353
