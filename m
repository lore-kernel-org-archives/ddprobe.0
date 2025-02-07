Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AB61D31B8
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738922754; cv=none; b=p39Q9rGORDn7Yi8Cc3QrAYwjk80UlST+67afGpDWBjQso7394rPcbtuUkoljAu9FTdPSPcxZIlPUuXLIGL0gNJXD7TcXxZt6jJAq4Sklj7ZggVe5mhemJH7oi1IMHlFIB8csDRIAOubUCdmdMOnurLhxGQFkMrlAb9dLRcbPKFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738922754; c=relaxed/simple;
	bh=/31tBHOm8nqR5dzRyV73oZ3ILofXRmPt7ZDvgPImN94=;
	h=To:Subject:From:Message-Id:Date; b=b1NbYDU+eUubYFPc1IBPMQVQZYZuMpxjZSQnUq6Uf+hsZFSy6cmCyIBlTXOhesncXW8Omiy0kt0mk6wW+YpKX/bz5aFo85+wMJylCzAhAeJemR1sdhLMd87A2k09URdBXx/sLR4cyoF7FnBMMzXcsaArMBa82y/x4GNdT4r4mbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLTUKp9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLTUKp9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5362C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738922753;
	bh=/31tBHOm8nqR5dzRyV73oZ3ILofXRmPt7ZDvgPImN94=;
	h=To:Subject:From:Date:From;
	b=ZLTUKp9KSHxuZwfo12OEAhI94HDwn3Ck6doPUhtEJuv3V1qPE+wtAy0m16rVGTTga
	 FjuIazwGsHiPUYH0aDKGFwo9Qsj3iAM+lta/+pEpjuhV6hgScRc88La2hFknwc7GKH
	 VSdF/eYnw9dmbp4Cfwnx+HoNURqod7a65A/YQQ6J33/s1Je/NYKrVRX3m79ctAh6RG
	 jfsUc2Rv1NYBHyRRzHKg8ebYUDixACvKByDutcJZaUSRt+y/z9Xh8U3CK2G0UciAiU
	 O8gwhScYdPLtnVG7oKhEdOqjExD86CQr1XmQ2dwoKMQh5L1HG3nLM8x3HHQwwruVAd
	 IrNdaKHEuuCog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930EFC0219C
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892275359.10567.12109226782653872205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fa0e362422d5d20afa12008e1122ffc4169222cf008f84b84b9744724ceed7
Date: Fri, 07 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738922753
