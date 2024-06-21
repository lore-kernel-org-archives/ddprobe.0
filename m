Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA9415FA7F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718989943; cv=none; b=SLYzqCkGsq+bqPLjZycgql+R40Bl1XY+jkhOrxl2KGLZd938jVWFGO0XNfC+JqykhwRyCJxxq3GQ75ye9KumZQE1OmwtYWQWT8tWfxpB3YpjxlBtBg1lXtRTreEi3Yqrh3w3xNgP6/hN9YvvJaICXbO5F5w7d+036qJWIm6A/uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718989943; c=relaxed/simple;
	bh=QJ6eTpOrxqfDmy3B1YbVVm5rlOe2oODJxaLHiPFqnQQ=;
	h=To:Subject:From:Message-Id:Date; b=ZAH2phpsyu287p61pNQUHn+z4geRxEg4HxheNZlufWgzAb4bEgO9Gpm8htxEuL+JNiTJ0yihGBztI5xBdumlcdFvgk3TU9Uunq/PlS0SzRxQF2DQCOUAwc3clzuLMLSo6E7X9W5N+mKRPG2lMbdq99SXH7NgYUxZX1uxpXhLKjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgExLBgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgExLBgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB147C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718989943;
	bh=QJ6eTpOrxqfDmy3B1YbVVm5rlOe2oODJxaLHiPFqnQQ=;
	h=To:Subject:From:Date:From;
	b=QgExLBgff6rsAovzha+7c99CezxF2ehyk3wS4Fj2kB0RsD4cJe8PvdI25ZUPHNZLt
	 Mz6LziMFbpeDkEeWwsz45//8OROHZ8aYdPEoXXN8wqLKSXUzn2mT7XXgSvhQ52UWEh
	 hyiESDX6uN0nvk+lG1rzLzw4LjHNLCTmjdj+sIjAt594v4+DgacwGndQ9qFFBbnKPV
	 tpu3v5LypqOCDK07qWNZpJUoRf30GorQ8bF/VVsIVVnQZAeuNIP+25EZ846T2nKfFk
	 uQOGYX5lsw5fKRDMocnF/24vUxWhlNloz0YlN7aECbETIEKe5nqgJ/YMVVvoSkRVMQ
	 9QjWAGzGTIHHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF7CC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898994281.2461.7242165022606708684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315908d77953592720b73e70d004a88380905bee15a06b6332a2f554a0cd7fda
Date: Fri, 21 Jun 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718989942
