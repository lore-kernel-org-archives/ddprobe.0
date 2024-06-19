Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665B646BF
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718758763; cv=none; b=Ks9g9vLnb9c2ZCASvihAMQ7uY7xpB/AjdrcU8+x4foLuc9RT1ciMl9JfTLIb328lrePTlgB2ZTRm2DoY7nYCxW+IVsuRjtwIas3PbT1XbdCpCnAKTMX3AYbEuSRGzQm95Sz2NLq27TOPBngQqnyHT+QZ9DsF8bNOoIm1SB9eRJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718758763; c=relaxed/simple;
	bh=5O6VvC1ox0K1+1g5U99I5s8TNPoF/igUXHL8ZcKBgNA=;
	h=To:Subject:From:Message-Id:Date; b=J/V1F1qE61vcyFprX8kdHo5LyE15By0uA6OUw8zI7sr3QnzM81V1FchBYxuSw4LSFwq8/vhzBXOzU1uGLCYLOKbjjCE80eFYXPeREeeE96vExotqbK7QcrAIAxj160GwC8G5NtdVdVCdXxY2lxgnGFWxpdlSHV2XOFmsy6Qna/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQlt4XPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQlt4XPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE158C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718758762;
	bh=5O6VvC1ox0K1+1g5U99I5s8TNPoF/igUXHL8ZcKBgNA=;
	h=To:Subject:From:Date:From;
	b=nQlt4XPGWqEDzXtL+7B+pFYT1NwUAk7dpEhclzlprjdwn/F2nY/iFMsV+pU6F13E1
	 OG7AYtRuuFehEfX23Qbox3z2bW6AngYh6nMm2VaBX2K0HKOCJ89r6fHPtV/TvO/FYq
	 5Qg1VLLhHzoO0AmwTyrwmJ5hK2SgeIE6YoSdlfxgJuWLzXw1WuYbiZ3AD/MfHeezu4
	 ut0xEaQCslUVc28YgekgjEcdM3Qc3j4JnOLTrPOWv1DmmvQHVNOnfCdtdxnTEAPZAt
	 Barw36rN8xOcgg0C+PMvJaYzXCu2G13p93ujlH+JrtosGsVJzuxGWgFPjxkbvhSf9Q
	 sVW+EFYJAdnPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AACC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875876277.28005.7346698838454330369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de63b360ed6dddb299f33fc272dfe1fa8281120ee216e96ad9f54c6f21f97617
Date: Wed, 19 Jun 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718758762
