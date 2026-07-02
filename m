Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F1F23B61B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782952714; cv=none; b=Y7fltPGAIqNluJRAsb1NgIHFsrCllE7Vp23JbAt3M+vzDRR1iJKUMsh4C66sOgWQgBEdsCGPwgXeYE/huVQIbAb60cYUmYO25xwZdKhzjdD906qPUMn7+0r+7OidjmIy45MT1ek2+LTvWoaurUwa1bEsroQr3jF0HXTbLGRYONI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782952714; c=relaxed/simple;
	bh=hJQRXgIgvdg5sk/kdl+Hvb003oxIu8nRbe1iu+kHKlk=;
	h=To:Subject:From:Message-Id:Date; b=bo0lAyZc0A+fQbMojyFUW71BaQgxuqDPsRliJtqhMowqIkVmAWamfa9+3dLvYwgTpRaYTu18XZxkKTp2Vp9qJHtDTeYXukELlFFT1g7tjY8xkyBIXYsmSYYU84Vd6i9c8NDa0ds+t/b+AE2Ct6dOvKPwivFmW33qJHVmjTwIdTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrCp1HCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrCp1HCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AA0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782952713;
	bh=hJQRXgIgvdg5sk/kdl+Hvb003oxIu8nRbe1iu+kHKlk=;
	h=To:Subject:From:Date:From;
	b=lrCp1HClbEH7e4ogZgLpDnnU/61COFqpK0T6J/2sUwHV9xUWdqaeiPo+PIqBTHSFt
	 osie4uuLRKtIzETeg36sQs19Ff9kI3fxLwC1GwipR3eVKm8rnMMtvVo3X+Tw/IJ9ct
	 LnCiY0WYk53tJILEOL4UUnGeT591pTXrHy+XPzdJMOd3zVFFMgbGDIuKmHL5WPQnmO
	 zw10QrBOHVWVfkN8huvuhoskimTY1VvmO8WOmfuYR2upOa5IF7qCdYp2yvT0rd/QD9
	 5pzvUWK2URwz3cK6NJjCXrGq5vvIRx08qc3GGT0XrSRUl8AFZnwKwDsIPQsqLCeZIc
	 zZM2G2rhw255A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD82C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295271368.26274.14937064520377733828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e1847dbe17cbc51f11874937729ac1731cab22aeb695344c8a08381749d37d
Date: Thu, 02 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782952713
