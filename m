Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292F226A1B5
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774847694; cv=none; b=Z2jqCxAT+HFtDPsWYWLP3CGFjLguL/usqCHzcLkamXv2rJgYU/uhtUSKxpgQdYBXlu9tzC3GLvFLs8SYPmwAsYFRWmXPR+9yesmCm9c7bHkJQGjHI944UjIejYU/0ItM7B+beMmgWwu1LGAPxV8i7hM5/gOKh6uXY6NfDuds7Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774847694; c=relaxed/simple;
	bh=wHNhAMuo0PgNuT34gdp9yexRkOkyCCEGXHW8VT2Q/Wo=;
	h=To:Subject:From:Message-Id:Date; b=H6+FEwYS0FAvqJbJVqA0muKj5I3Eka3OI5fX32EiovMR2aRoE5tBRIIo2s7TppSIFvVvVCnqf9fMyusJQpXWr0RUDml+J5OYAQ6swcUQo8jT2GdHrDH4nPo8JIxRYk7lBGagzwImPP4R9GVzAdXenKPtbe1FNc5uPk6Yk6RZG7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9ycaEhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9ycaEhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B246AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774847693;
	bh=wHNhAMuo0PgNuT34gdp9yexRkOkyCCEGXHW8VT2Q/Wo=;
	h=To:Subject:From:Date:From;
	b=c9ycaEhxe2XsOctgBUUrtYT4OK2gKUwrl8zETJY4ePQmJk7skoo48pUFsy1M0OwDp
	 hUdjyqw4KwThuKz05wrQQCrvshXGJavai39+3ob7WF5ac0iVDf7PHegdxlJnBJt1xC
	 V2Qv9QnXF2jrQx6ThERRULGB1iKtxo2BDs7pZ6Ugu/Bs6gBgbndOpFnz6u9zAMj1CU
	 DBf4EQcyvVaEMa07MHOa8pFvBd/IIEwnyxhFA0eES7yWB79EoOs+B2lQ+FPanHKa+z
	 FPzMCdrQfAkn0wM3nsWncShj91AhNFfmHTw/cItkHNmXVpAAPuiioCxzbTwHUEEUyN
	 Nqgz0BCJVqJBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4BCFF4941
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484769360.20125.11610571261325360543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a7b36098e43b357341e5137f902c1e11d739420ae3af50df5c574cf3881987
Date: Mon, 30 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774847693
