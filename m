Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220BE18A921
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767769434; cv=none; b=g/djWxZVY/yaRc3eYwFUTbVTrQsNs8Cij7mKmFbdMrRrPUuK+qmIJ+MoDK9/Y8XhtKkUVu0Z01NALN+NdlpWAkSdHzOW7Cy56GGU6DoInT2QparJKLavP5trnR41AATjuk5ErEwntyd+LpM6lX32FjdjLjNXfqs+I97ZDT1k/WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767769434; c=relaxed/simple;
	bh=BMtSQjPHSepltKlTAeCHUxkiHm8YV8dgFMes4nMR8F0=;
	h=To:Subject:From:Message-Id:Date; b=krk763dIpiGFHpxw6ekRB/6Bmc/ZPgNV6LD0bxNmXVYmtHTMdClzyM6JBGkqHwy6DoZjwVowISTBLsOVzjYAmq9xRdW0wa5yTp1FgPCwC7fa/iqKlYkN1c5fGsg72FwtNz3UEt95GxbBsUAAP+aw9aRZt1wFyW2MXuIW5Yq9cmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtIyPXsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtIyPXsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B20C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767769433;
	bh=BMtSQjPHSepltKlTAeCHUxkiHm8YV8dgFMes4nMR8F0=;
	h=To:Subject:From:Date:From;
	b=KtIyPXsXbSmf6Q6KJhX35/Nrxo/O+wiJb3w1g3Y6KMqAm8B6RON/0cy/hyHDIVFlB
	 SBytdFnVj8JO0dZWR1Yq5r4Vxfy/8lZvATex+vLH/RSeYaFT2z/rjGT4Q186q38J8/
	 BqBrcxMjjIYi5u+NAC6FNS4NOMAG02TS5+3u00FXOUS9QJnaVvRtE0G+YRzmykRN05
	 zr2ep6v2+gF3033k/8hkWo635/P6/h8JbemUJvZ65n6JGtdUUrSwZHPTvFqZDxqCVE
	 tKwyKcOL7+x29qZvjn09DRk8TjLNhz3Hmp1V2dtVskkD4Bk3NFEp4Ow8yAUD8KICPt
	 Aixp9QqZBf8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C95CF6BF0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776943358.8504.4047419519969966135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52620df3a6169bbffd8ad112d5a28a633e10cb70311fe6ee78be25a6ec1387a0
Date: Wed, 07 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767769433
