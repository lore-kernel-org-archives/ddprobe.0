Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1412215F56
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750274394; cv=none; b=dSb36hyKqDZb6DsXOOiT6pDoDDYU22EA82W7KBaYOa4qIR0CsU/lvS5Gt9hFE4X1ECXMtH9hzgCPLxDhBjvdrpDq+aLwptGyuFZzc4F3guS2wsGQmKAz0PIo4T3R4hckI54Lpk78NATIvfU8rA6p6/exQNt9n2fEAket2TGXmPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750274394; c=relaxed/simple;
	bh=/uBLvHCrC4CKhEuFqKo+qYr4VMNJzQIcLOYGFd3BkVI=;
	h=To:Subject:From:Message-Id:Date; b=OwRzdo+Lz2gY7qrWkNJDjFMCLcqGQUUgRq/b44t/D6PJ6TtzOBs3+QVMDnXoSes+tw4kXILs5Sw2D1cEGIHUNoIx3szg4E8Ov/9OwjOCd3b8Zk8xn6F8MuZ1qWCnBJqhOtrT4sg+vQyUNlvjqOIhXzQ5B0FjfE9o+M+j1Rz0Feo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFXIqpiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFXIqpiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1007C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750274393;
	bh=/uBLvHCrC4CKhEuFqKo+qYr4VMNJzQIcLOYGFd3BkVI=;
	h=To:Subject:From:Date:From;
	b=iFXIqpizWnutvR098O723WKZjGaRxj9s/A1ZEXLcOBwcRwr/RDtnGr5iJ9Mx9KE98
	 uVR0vfK/jig5pt3Nel7ENgn/CLDlxRVaSAi/saOQtci3wkkmJaiosI2fQ9/b8xiRb1
	 F0PCEyNHqa7n78Fkwp//BYt+Xazx/c/Pro09IT+KWKgmRuZnPk0R77wrnF+erUJrPp
	 YQUj7cDgPS12WthHTB5HWvZu5FmjDcFMXs7y2wQ/QJVi8cqlerr4Qu6zeUiXgEU3wC
	 7/tw/mfRnVV++PgbmTml1EaNnMMujy2YGMgHTBXtYAl3YT3aj5pNStoi0n+gyuVWLD
	 S6uIzxY5v3zOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4BC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027439358.23480.8031865526417784851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9a6fc030b50962366b0edc5562db2f435ca87636d2c781c0fde54d1f88487b
Date: Wed, 18 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750274393
