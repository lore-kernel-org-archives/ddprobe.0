Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492EE21ABCD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744925394; cv=none; b=gStnfLGUWBEuSzKVWU7SFuNOBHgauctVtjVsAK2JqjRNKpcjHcOeVLsUqw+23cphXJ75VnvtM+ftn+9SqvuTeLM0mba7vq0cPFl0B1sXHE59ZmS2UlEPYyDeHrwUx6QzpxbKOvlE5ZxfUKUYDvUXMIaEbckVIThcENBj3YczkwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744925394; c=relaxed/simple;
	bh=8hsc5YuTITBGxLpbDnuZmxDRuxKJg3Hrq4ye4/zWiRg=;
	h=To:Subject:From:Message-Id:Date; b=hYg+GX/tMV+E1R6i4PWeIXbTUmlVIZAiqvVh/24BvMNB/xglN60nLJ64skUd3oHA8zN0tec3usgfitP8te5xXZRk7zP/8XZMrvigko/nmtZR9Erlracyi068ADer1s1P6Q8J2pZFNGnK5ZhXhMfZFTsMZBGLbJpSFTVUthcg5wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tS6miO1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tS6miO1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAFEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744925393;
	bh=8hsc5YuTITBGxLpbDnuZmxDRuxKJg3Hrq4ye4/zWiRg=;
	h=To:Subject:From:Date:From;
	b=tS6miO1icZUna7L5nSMBi4vb2Xuqo+EPolbBtdgOVnPCwxznZyVcO3bUdHeUnE++d
	 9tk2/NB/nM01zYt/MdG2yEyGwSmtm6BnvOijVPPhqTUAaScENeF70xna86FVlnRpI1
	 4eyPUi78dqhAnGxTD/VgYtr7sn1yklgdb24+H2SjP1EA9h+RhdWRW7ES2ByjMeMFXu
	 xSnLel50HAOq4uMa30sUzp6nR+uv3LlWB9OQAzB2Cl4u/WMAQAiAn+n4CplWrXyDtR
	 Gb5qeOfd3hhUoWoVin8DXHlg2Hvs/ILlwhmVEXJ8ZFWyXE1NlsRCdGjST4oLyM03cF
	 iOXDEXj1iwA4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B85FC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492539362.472.11170303660107889311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78ddb6630be13df94eafab30b5f55f99deab531f298118bac0078641ff635e9
Date: Thu, 17 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744925393
