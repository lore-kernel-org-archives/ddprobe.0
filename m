Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF71288D2
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757896794; cv=none; b=LrZAfYYEEBvWqTnkUAEP2ObpKL8mysC4BRF8EfHo3NsjDLP3+AtKcBkeOC9TTSAif1WRMuMrEzsAJ6nyzqKzxAN3dlkR5aB+MuUk9rlCKO3V9/ZP1BV2x8QBxLVRfHzhyJwYv8tdjAg/aaEh65TgS2Y/OKTDeJg6ZwheoQLOvio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757896794; c=relaxed/simple;
	bh=+vFVGFgdRUNmUC7T4AKYb5pI2zF+xIzG1vNTuKG+RFo=;
	h=To:Subject:From:Message-Id:Date; b=fkmOQxUV9tYyzf9erHF3kIyJ2oYu96ZwJEqzfxRTo8SvjRGueDds/INiuwFUwd7WFZ0hb/43gHNewEVY9HLCILfQMnAorCNdaYMTrUBQSFMwUagbnmV5EiSI5MollEuTSAtx+DibOWgcLzdJNBMZ+aYkvZXrLVkQNtK3OlwvJ5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpZw5dVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpZw5dVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A483AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757896793;
	bh=+vFVGFgdRUNmUC7T4AKYb5pI2zF+xIzG1vNTuKG+RFo=;
	h=To:Subject:From:Date:From;
	b=RpZw5dVn17CPC/AmBl6zXsKpTTjkd7Fw1rJRnPpakhrTwq4WaW5RLvcZfMKlhN9eS
	 1CCDC1cF5OaEoGoewdIGAKxEVELWaoIbNOOvNzQZx1lwGhRpXynAwcMNjuWVTn0Ziy
	 erg1kSKod/v0jaUKUWaeAZD/bmlCyCvOpbOYT2PUnVsKnFWNTRRv/JYJANFEBF+wJG
	 a8anP31a9e4LRBFvmQUw49zwBfXGsCda1HuUpNeLfDfOorZvFLi/6uPyNdGuS5al+y
	 kwzMI1y2pQIUsYU+TJtP4OwRP51olDRDlrPxayD/+KDPmbKhHQFNvu0fn7tnEn6dDN
	 6d2jvvjeKkHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA8CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789679360.15157.8605757369821947892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf98fce33408e2e13496c42b12dd44b5def1481c319986deae3649fe8ee37dcf
Date: Mon, 15 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757896793
