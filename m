Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7EE30FC37
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767011633; cv=none; b=hKPJhLpB3C2HrOW/54X4/EF+gu5zY5i+2Z7lXTruTlhht/5o+K361kabRb/LSYqqeF8edP6h0u8WTGooHXla5pRaHhCCmyUFknWnM3ew39UrD/UGX1kfJy/eTg1tZTFBL205Rso4HqfI2UMfBG8SRD6frCQyusf/VEVPnhXBDZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767011633; c=relaxed/simple;
	bh=d9YacZGKDf9boSi6IMbXWJ4EKaSV6+lVHjJogYntPWc=;
	h=To:Subject:From:Message-Id:Date; b=BxlOZOEuU9/ICz60t6daw6pY6pR36O6KSPYPvsNyMh1yDikv79VqibjKz962dLid4ZLm95kiG8cJBt0szLFiimeKdheBLIuly6qKscpCclrD/Z5xuzudAl1MX68I1N64UaoxCGwUmioLCzCDWU1HsqoT7/d9wJ/ixLIsYQ/M8t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwWBwjPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwWBwjPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9900C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767011633;
	bh=d9YacZGKDf9boSi6IMbXWJ4EKaSV6+lVHjJogYntPWc=;
	h=To:Subject:From:Date:From;
	b=AwWBwjPY9N+vJSn4qIMmIlNmdLLwTITa8Tmws4YjZblxf1rNXOlDlgruFLCh4YWZA
	 /M7db08fPsJsKB+GEJT3kSOml1k7fRe0NVJ7fOM+XVydyuGjeCA2Db5tIxN+8sq9MK
	 hHEWWGvd6RutfBOPgN7idrSN6ZOXLtDGt8JfWvCpPVwjJC+s8ByznNC8xeeoeeUuqX
	 /w46N6w4q17/kelXQY7BjNkITE8CPEtTDEwV115JkAbGYM3oFD+kZWDdxCqxVNNrMv
	 Y7KPD0nW8MliCBWvhmAyrBDSVDKNTH/9PwBLMKFL0nUY+y2wTbSyLzhwXXASn8pmBS
	 /pRycEjUDjUZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB3D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701163360.15110.3666034279987256351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b226ed0f61ad6d9719ea54968adc0525dd15444775db39ad9f8ea123d34f7703
Date: Mon, 29 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767011633
