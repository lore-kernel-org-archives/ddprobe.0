Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F12296BAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771521293; cv=none; b=NKaOz8NDlfpZDd8+unT97V6Fq2t3c5vUXVqfW+G/e0LGDOJ4eS4+H8OqJ12cqBZWFcT1GAqnUwkarIrzt2yjaOUldw1SCD349SsI2xwweFk4kiJtijGAo7e1XkmdvXxX6pi/FhehMrDPXNvZAUSVCTRENaor4tsKfa8vbcBpDvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771521293; c=relaxed/simple;
	bh=eIXRiYapi0e+41q2NewZonEA+DUxM4CJqzvwjtuszPY=;
	h=To:Subject:From:Message-Id:Date; b=CmcpT0kWPySnUH1iF0kfgoiFF9UWQ/zfq+YT1uWFSqt+cmR2yhz/ru1n7j2KRO2ZXiseg6zEjbzqLyRPff8/RjoKVZi2sOtomD8ThFrFKjWwJPkdejPYRXyEb9wKZ2pjWqGLWlLQu2UPvG1baSd08d5AwDWnAZIoMFaZWyz+5M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Soxz/7T3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Soxz/7T3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A862DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771521293;
	bh=eIXRiYapi0e+41q2NewZonEA+DUxM4CJqzvwjtuszPY=;
	h=To:Subject:From:Date:From;
	b=Soxz/7T3oIzbMX6JUv5PR3yC60wcOwj7zvA1cqRu3gG4XxZ/hZ7oayMQ16/NmMqK2
	 q0nP5Eh9noP1YSaqKE5eEkc1BqTxXnZUs41O/zPuGF2Jd1x4GFaL0R2i6/v0WGiFIB
	 n8j77QMUrNjlzmM+PoYKwrA2R2fILt4WWh/8ExGjtdEwbc0NlH7wWwOa+GKFRK0iBq
	 X3s5Ipw+1f8uyzBlzESPOyjmm5fiPdL8b7oiSxYWB2/5zIWxUpMxljZGIwSmfnrChP
	 NCwZOoEdxo1cAo78TbFk6Y34lJ/zCNh1psX+weWH3nnnItvq2UBB7L0y3lM8T7ILaF
	 6aJ6VT8mkXxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F5EE9A053
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152129359.24314.9938006494785168825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8105affe5008a5243d9d332051b8c527a00d0124c57ee6d90482b8cffe9c7866
Date: Thu, 19 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771521293
