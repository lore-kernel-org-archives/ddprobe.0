Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6851E3762
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764414774; cv=none; b=PJublxiaQm18f/QyYoHmB7u7gtSN40oDdi7Od4MdRVjbvHZbtFxsL7pCABe9bv5vwDbTauBRa89mAg8yIyI5NC8DsN8/aMToexYHCppmYQ/VnbeSx4ugTM28sfXjnPSnPLqCHAuCaHulMlMgS/W4FQ8TBEOZgvj3tzHPHRSFDdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764414774; c=relaxed/simple;
	bh=0qcQkrctCI0miW2/gsluv8Lhfas+kRhv1PdlsY2bnss=;
	h=To:Subject:From:Message-Id:Date; b=TnPx2Gxrm/+0mYquEi5PReydROVNLdADk4rZknGa0FhRVn8R0uD9Y+1TizjR0prPm4VLLTrAtOZKVROQ6HCwGfQB1gVDxmXHrKGWmQaCaPvVUYz7HO2Jq0kVJQ1aeqFD8jmdyMdkm5Nj572wbNw1kMf+xkoR1gOpB4HLM1nzvMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bos53nfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bos53nfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5BBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764414773;
	bh=0qcQkrctCI0miW2/gsluv8Lhfas+kRhv1PdlsY2bnss=;
	h=To:Subject:From:Date:From;
	b=bos53nfP8Lo4n0XaG5KdFAPxwawxQZvKu54xSFya9I58xXmz0y45uNQ1JIgQO/1Cp
	 Lf2n2ixEPrDnlYETLJG3Z0Rs81CFA20VuBK9IecxtfFqagu6RyHgm0lksCgpK1MNu4
	 bdRj7OiBLr1hLlzLLIWZmyz6Jaj9hCUts2lFAIxgXSB7GKiw0a8mhyOkoO9vsktA7M
	 2pk0Kn+10bxvVDqTYHNlZBRmV9iPCeLg44gjOTDGDmErAwb9i+7UyVZ8CjoiqjD/ys
	 TmQnaKqns5fSiA9zgc/qK+XiOqAnnpZ/Aevim3rX3NMwS8vgY4v7L2jgO6yt3ze4fV
	 lKUiw82oOANyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E8ED116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441477358.7339.7749157132212877704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79be67bc0e80c51ad2a0bd0a395ba9d61398bee28dd2c317c697158ab4178262
Date: Sat, 29 Nov 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764414773
