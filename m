Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1143A221546
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766505834; cv=none; b=k+U9rUqW9bYxPLnAZIk1HvNJH5vZONF6QBDDUwptjHL+VvMezLOpF03DsRyjTxFI++dQUvQmoQIPCb9Iaa4Wi/O9Va+t66hBY/YwcDSg73BuDoVMAmQiUpkTlBfB1u6Yyflumn1vJxEm50nIirBZ8trpUMpHEolR7CUqO0V1xCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766505834; c=relaxed/simple;
	bh=D0r/T2UPuGAQXlTEIuONcgIxXRe1etc3zqE6wWBFVtQ=;
	h=To:Subject:From:Message-Id:Date; b=Ji+TTz5JV8yAhHUJPyVI+RWob1SNM3gESbvjeF56VdbLJKBOSVTcLp9EdSng4b3MY43di+XRewIOsHnnk2utyb+f7Fw1iawPKgSZoHFRIE4GsR7SD7Z3aEPG//4V83ItboyJS8KLA8PemR2xzFBCv1X0XQc4M+0XJqva1XzwKoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sibabLX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sibabLX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4564C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766505833;
	bh=D0r/T2UPuGAQXlTEIuONcgIxXRe1etc3zqE6wWBFVtQ=;
	h=To:Subject:From:Date:From;
	b=sibabLX9a/eAjQ3PEO9v36MRkk49JPqyMf7Jc5OO9HZIc3Wis+yIVRQhG2vOE7obP
	 UwI5TCZYhGwspPyfysaGCLa1hWoqQKtmRhWnQWjZRIjOf0jUD2fqsMoYn9JHERjBF6
	 6V3sulrN+fUSMNCopZVL8zL3q8NyGVnGu/RKouB3m46OxTd/6UUS+LYvwI7iHHafpT
	 lbjDzTe/wFS6mGy0nrqIszNbUlG1FWX/PP3BEYFvMSLxqZWAWmdrDpuDpTeBIqfhkn
	 xkH4ADldDJ1ZpId7SbDckRihJEsQs+wDjbSYgNqjcgrQqakY2a8Mju7SsfLg4yEEcT
	 eoVDdbBOPfNQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F93E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650583358.29987.17557886753793313126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956bd9112162f02c2dbdb5b4eb7deb4a7f09c72ba4b987faf507aade8c7cb5e4
Date: Tue, 23 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766505833
