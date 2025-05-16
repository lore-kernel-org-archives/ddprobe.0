Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2663D282E1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747385994; cv=none; b=b9cvheOTy4xDvTtczi7bAQvn1JadG24Stc3r/2unag1UV6ysljpk5M+eM+eYEVJa/hRLUtQtn3wehU2KEz6CdcQ17y9duu2kTCLK5zcr/TSGU+epjL3Xuv7IgqvCVSm4yq8X9sxj8WAxXSvjVvNY0Y00wB3W5Vo10uKeNxiLag0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747385994; c=relaxed/simple;
	bh=n6KQOz0Sw1eTPZteSGnbD+rDVB9MQ4TJg7o21jeKurM=;
	h=To:Subject:From:Message-Id:Date; b=fvGncd6lQ9yba8zqjVuoDafjh7mXXG70pmhZp1blYBAY08Ka7ixZCkkcfNmPBo6CLBebulQkGCBVexkWtNl0vfBRPPKoHV3HtaHj+7m5ib2iZAV2N8PIuguWVP/xtOogo9KOE9UFNn8/7FAMZ4YbTNryNC8a+NZrY5YjDvswmAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4GXQuqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4GXQuqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBE8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747385993;
	bh=n6KQOz0Sw1eTPZteSGnbD+rDVB9MQ4TJg7o21jeKurM=;
	h=To:Subject:From:Date:From;
	b=g4GXQuqTNGTzLnPCcoyvL+PGlh4HxxzwQhZfI3RgNFlS64ap5nLRdZ9RjDk5Q+TiP
	 pnr6yJzdtBPqv4zqIguRIDf6R81URjL24hXTieRvZ1uTj+BCUosDL0UhSkD3e1zzl8
	 bLuyWy+68ueFOMpFgC8TYqcaIieTBfq8l7//QU5QjSeus/YaocDPb7CpxqHrVRyyO/
	 xAURN0GcZ5WUTwDw8cgXOVBTKaoc99yFupJou1VLDC94ISPuMB5zyLfrdtUmiTApvz
	 +gcuAQlf4caSEnqeUYWUQ9wrRJJaLwvw2TIjCOj3P8az4mCeuRVXT0k/0oK8tqcfYl
	 8OvrDzfdTkByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA6C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738599357.31732.5022416251463775173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9874627683aa8db883d77f662b9031fba857c709aac960143dd8cb19682f0b7f
Date: Fri, 16 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747385993
