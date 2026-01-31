Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A10F433A0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769862834; cv=none; b=gZ3Mf2s/DPwfMTSeI5I4AJI+OZXxDeGDiixzi7wQlljlL2TgbaYX72BmU+7Rjxi2AjGjcQKIRkuBNLZTXDEZvFQSCWR6j+h/HOwG3AlT3GWRj+EwLUXmWMO3NlusSXYJlY2IGKrMU36P7cj0uyYmrNfCAz4oJOXUtfpZzZs2lTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769862834; c=relaxed/simple;
	bh=rus4v5LBCAUnlJVLptkRg9i/RRQofhwroHxl68R8eCg=;
	h=To:Subject:From:Message-Id:Date; b=ryC5hPU9yb87mc29fKYTtK8lBH9Rz6BmFY7foDNDzdYsrozxX43rwl3qxND9fLvUStoy4vjPtA+7ZPbcLYqojVyQHx6Rv4/eyVt5d1qDSKMtEgLzMJGf1W1JOfrB/n3RNZSG6WtwCcMd8H5HnCY/TfPwGLYn1HR2bmH46MCV5OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoyBtHT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoyBtHT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A002CC19421
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769862833;
	bh=rus4v5LBCAUnlJVLptkRg9i/RRQofhwroHxl68R8eCg=;
	h=To:Subject:From:Date:From;
	b=UoyBtHT/RYHSLiUyW5V0MVpjCE6gOsbO6q4MnDtBGLkgFo4yshf60SDM0Bkh9peqM
	 YFmiUW+x5iceO3Vac5N3hWibTBIYdXKVZ+5bWQuX/NR18huvkMmPLWr2Wfo3gweSEu
	 MtNhLo2LcNonWs2A4WrrW1wHVpnlfJHG+FnnSZCI2lX3CAJbDix/ulQ9vcTZxb7oPc
	 MEntmaEgo7SUvWG+3Mpy7RTw1ec5NqQQVECXyw7AAsPnP4VbDUWXxzF/Ld+s7LMNSo
	 TZUA/EwlDfpm/khYWJ16X0QGfL3TK2q+FyE6AcRdapbABVkK+nCyusxzGMGXEdZOre
	 YSUheifHQbbYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E697D79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986283357.32578.7445191428618847429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b2f6511582766be5fcd4045d82694ecb5a0f0d7e4617e47b8d600ac7d8cd3c
Date: Sat, 31 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769862833
