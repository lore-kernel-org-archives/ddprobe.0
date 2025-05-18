Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADEE4C8F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747609194; cv=none; b=O40zKDzBSQl7F6bjfUTfuq2uNGPtCCRmFR5IsQOx9398R9AhVyFxf6rwK/HJBWtkYNS6ufR2UkHbF9VRgGdiZ/16EcI+RO/4TD5Lq92s20+do4/TUR4WW+fCeD3S7T/kJSVaP2wCVzrikyK9iRxSM7JA+1o0+dLfctfl7q0ngf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747609194; c=relaxed/simple;
	bh=XwIKcbf8lCnW2lHYfAySyclth/5WtLFrU30JEqhMWs4=;
	h=To:Subject:From:Message-Id:Date; b=ggAG+Hf3nTlmOKcgDk6kP6mhUvU++yZCze52qWbalYHfl1XFWFwwDTSZyNigRO5r5rZPLf1cLkrht6HsviQDuxLIuTv3tq8QlF06jDrlTnLBjfPaD9Dydtj6mqiqg7K5qP9ow3eUc30bEhjsKa4vxWG6Wmn1svlY8dbOdu47T7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vkbdw55c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vkbdw55c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC81C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747609193;
	bh=XwIKcbf8lCnW2lHYfAySyclth/5WtLFrU30JEqhMWs4=;
	h=To:Subject:From:Date:From;
	b=Vkbdw55cOZRJhzvc2u0lKOH3QUUfsXW5D0viLazScwkBjE3PCRGswyjcCphOQG3HK
	 kyud07gTZzBhY9pTsBVHvS30Mk6GgdQ5/lGc/CxOFpyN42vMMU44HyKeY0RxiAkErR
	 iqL7RQQ91by0+GdD4sOdHc04NuV45Tq/kc2gJ1K0jTJHz/S3jKLX0FesATKZRNaH2w
	 rbbCNm2E73oXMgqNmudCo6Q+5em64rQawQg9r2qeWBfSiK2vUxHyMUuC6CMIO/nTq9
	 qKC6ATD1P5Y5UU8ESIN8tjQiD5Rx5AEChlc+FXRGOR7wNQwK1yTHcsAtwEd1VS5V/D
	 VjTuIDz/HoUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF32C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760919357.12369.6983914493636711347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec6406546f4b351f26d115877ea636a61f3ec27f03119795cad9670ff05d8ba
Date: Sun, 18 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747609193
