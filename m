Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214AD1EE7C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767942834; cv=none; b=J6BubIRTD9ykLB9pd0LuY3aFY/9fOfJPdArJTpxWYCwnM8l0QKEpWnWVsLnqodHjWR3j7yOk+MWNVtyy7i/N7G0xoh1UwoN6fJxDxwz03yzoui2RKTftMRk7QmcZZqwWpN6UgcVabsux9Q2a/i+ITb5WlA0b20E2TKd/pHi2WP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767942834; c=relaxed/simple;
	bh=djHXonoex1pH+T78KtP8s0r5GOFXLHJno2rc+u24pnQ=;
	h=To:Subject:From:Message-Id:Date; b=oLd17Hs8oZ4Qij8P80nDFWvtHdfGRlqy7OPxtJjTHzDiAOldmHSeD2jvB/vRHD10/fSv+DzN+j0NZwVo2EARqzYC/UUhOMNdbWwuuiHJ33N22glY2WA/uJC5CSV0sJudSoLnakfhivIJUvLZh10ca6kQ+qnt2ewajRUV2xyQGcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6ebXHxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6ebXHxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F9BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767942833;
	bh=djHXonoex1pH+T78KtP8s0r5GOFXLHJno2rc+u24pnQ=;
	h=To:Subject:From:Date:From;
	b=a6ebXHxSJCNV8ZFexnN56HaHyAYs4wqrLW6Ag+zJ8cAlL9JjB9kQUxsX3xVgyS/A9
	 41KNB3DqbkeXg6y3FPKc3FHevLDZBrUzrouYKxjA6J9geWX6rlpX2HCLg0k81PRkJ1
	 mpRqBxpcjvEoEJExgQltAj/SpuwwbgZ2CfptryWeFBWAM38LU9u28eB2FPPur2lvpo
	 i4+4GQHnW420HMdYMWkK9QYsBo9dbKZCwCAn20Q3zcargRD/nr61/9VKvCSQIz3y7y
	 jb7v3UoLjFERrudk3W3cLrRW+Nd+q3+C92R4s7Kv2d0ENfP5lLBYKJt4kFm/hRpEwf
	 Vrc3/6EYr5zXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A4D232C8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794283357.7134.15711155049455688040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f0a719999a702fcb9db8f7e6d8a3388a17c1b44e1cd9384004d83b8c4d0b19
Date: Fri, 09 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767942833
