Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1E51E52A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714927343; cv=none; b=CEmGZaAesL6hW9nqi0GMFlV5zLl0dTuHVH+d7J0zWZkwgOYEY+hs2h1OncuCEcLy7t8MWpOWCJyPCuZGH1pp+r/T7H2joBJb9fxXZ2nXdoTmmjlBLUqYKt5nTlFjDghwZotMQ4Dg5osPHj0q2HQyzy2mKpcRTRlfT9fD4n/rcnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714927343; c=relaxed/simple;
	bh=oaUqSZ3cEhBGjkmj2IGo76MYNSMfeAP0vats50Ry9Tw=;
	h=To:Subject:From:Message-Id:Date; b=X+1bwNviYSTzvS+YXw7qGRfLpwa4GL58NNJW9y9xprWw7Fk19s87v6k2T9EWMvS/jTEHBCFVIyAxkWiFMqCIAgglcJXFx2pknBhHWSmErg1Q4RjsafcPksBC8qu+7Ms4+BAaloi1h6nVl8uet7oFj17RWglyHRYPjfII6GfByio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+LhBLMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+LhBLMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61FAC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714927342;
	bh=oaUqSZ3cEhBGjkmj2IGo76MYNSMfeAP0vats50Ry9Tw=;
	h=To:Subject:From:Date:From;
	b=M+LhBLMDIEmSqRcjIwKaI1M65kw4a2KZi0CC9oJQjS5o0wbxI3N/42GbIirNWWQg/
	 9UPi1NgB2Yre2bW68UGKfdXpTrTKZ7mVbRSO21fYjy3/J1/1CFZG5TwPMgG6OPiQiG
	 C7nwj8nX1f6X6KHNjlgwFIK+sXU/bEKGXlp2PGYWxMM4P9j5xCiAuX298WiIFzRN6M
	 tB5PcCmx8BP74YePqvimS86jyR5a8JvA+ziphfhfWuYguStBh/y13Bt0ITgt1JqGlH
	 LeBV5QP33FViAnXqMoyEY9/5OeRblU4nW1N8z5zeEIgLZqjDwo4gyewbTn/hyvKAMj
	 +umXJ76nHzSsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17B5C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492734276.23709.4227726372856548558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98bd26ee80c1679974a1c51df363f4da640ad6bd12776f585377013937f6762
Date: Sun, 05 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714927342
