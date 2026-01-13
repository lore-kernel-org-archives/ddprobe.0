Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE40C38757F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302833; cv=none; b=oiytV59zEVFEWvU7yHjMC0ONLf0TGKtcbAfCzx5X9LtilTYf0xS/5Kxoq13bfylie02aqqhbuy1JBY97kHRnM9FYrr92qN5xIbwuSzC3R9R2imxZrSt9zD2PEs/kLvq/2bNAgmYUwVzGInhfR7/Fu2+ov1+WB3HkkpmFhQjMM8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302833; c=relaxed/simple;
	bh=xGi/+tR3Gih97vwruVbHLXfBawoigghCNevZKNvkNpU=;
	h=To:Subject:From:Message-Id:Date; b=WQXkKZ6jzYzbGTCh1JcgwREBWk/ltBuqg4k5G0taj6vXU7iIcpI3i/WoPNwQ3AzqPzu8JELkHMPBMrXkiHNWsShPS5NiOs8pmPyT06quVv2Zhg7n8P+dS44e3r1MVnE4lawks8BDYa7f35q3c0STMEGTUk6pkyoRaGuA4X1GqeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmOpy/fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmOpy/fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD3C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768302833;
	bh=xGi/+tR3Gih97vwruVbHLXfBawoigghCNevZKNvkNpU=;
	h=To:Subject:From:Date:From;
	b=GmOpy/fjL4Y7ZiLN4Sg36jTph3Figbaxqstfh+Dvau2MpV76aP3XndwF9K4Lxy2iC
	 RVnos5RcMqGF4uKrMbCxyeCsEP1UlvKNw6shHVp3s5u3weLAaag0iAF7g/fGEdU4y5
	 ilzVTSiKI/IyB5oQdhfBrFoAC+hlBvf8eQkdKw8kYA1kBzw5gBfgF0GK+USI+Aj8/q
	 nVRWAOpNEYKv3gB8LGD/6HA0T7bboHbQX6J6onxdrOADMnfBJWYFdsBw1vvVaA1ZH6
	 nO93Uq1xwivI3EC6OjgSHd95zlYyFwc+akuE2pu7bqRob9EenvmavfCveclcUzSFJu
	 Ft/A3TFGFOCpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915FBD0C852
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830283358.6475.17952921304027442360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f83342e155fbff2baa4ce89d708370b847b947a1a982d9b220f5f7fe9642c3
Date: Tue, 13 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768302833
