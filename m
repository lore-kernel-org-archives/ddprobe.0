Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5357213A418
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744439394; cv=none; b=R49z0a75YxumDG45nX4saA8UaMdZ/ru79W+RkA1f+lT6azO7Ag0z2NkTCryco3Zp9b1pX2vdErNwl5JnGzONHIeKuxrldXRfc8/WkvgAcMVsIiCvkL14to+ELDlss2y1YRIFPYfrfJdfXCBMXv6uLWUbrCtsovngHuGEvfzbMBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744439394; c=relaxed/simple;
	bh=KR52ovX7PhDntFVPCe5MX//Rjqw4JBgDsyED+445yiY=;
	h=To:Subject:From:Message-Id:Date; b=gg0l/muH1rB9KVTd83oDpt+sJK2YggMJWyHk5Yle+Y+3SEO48CwDQegwy3kb4SPzuRg4BdftykUnGoGWCkY+d6FUPlDcZQSMKfVSXYnf5zAA3H0N8RAc1GZBpwS2vfyH1d0Co/N1dr3vHELPpn3YAiFUKNIaP4W/CNCuQ5rUQVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXx5Xc2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXx5Xc2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B363AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744439393;
	bh=KR52ovX7PhDntFVPCe5MX//Rjqw4JBgDsyED+445yiY=;
	h=To:Subject:From:Date:From;
	b=qXx5Xc2rQr+SMOlbMo7HCPgp/fLvkS5+FbPJQXZMwLioRxYiMXH1gRwq3zwwN4vW1
	 Z0D+U5jHGvr0CfOSaQ8OObsbOXEhRVNK/bYlzAz4P57ahb5QsxMk0Ggp85QkbFc6sh
	 L0QM9nvabtoHavjqyz9QuaPHrtm6COzjiwNYtSVkke/xnMHLceY8MLaCibh6rdeMtQ
	 j+r5Fu48ctu/JZuhP4rtSqtDZK+zsR1djYr04OiPLXmMycKvBe6zi6cIIVIkWjU3Pp
	 61NeLDYRDb/47KGWIx6kMH+g5NepGEPwGR0mpfLqWp5jkm+df1i8QCOFtzHbFhryyN
	 aHmPO9TbE0Vdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEEAC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443939360.13987.18036498198209171090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1933594751b2e0b39ec5fb922b694e991ed76b66f9a8dda54f38c5b947b19982
Date: Sat, 12 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744439393
