Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537DE18E04F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724197554; cv=none; b=LK+nkdVDR6DpX4WrWSb1PQ4rRx3dIqB1FCb3VuZCRY4/PEOgqBXTQ0WO8dOEPUAJUmb6Z7NeHbPZx3dkxgOEKbYkeH9Gm6bHgqzc28Q9TXSY+rlotd+3eKC2gtD8ulSLUDBDZ9lrR9G+jBGOlrPP/1rY8TGtslYm7jpK4eefSIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724197554; c=relaxed/simple;
	bh=aV73twuOL2ghdAR0EDkQrpFsayqee+E6msjHZIWtIHM=;
	h=To:Subject:From:Message-Id:Date; b=a4bGT4c/lknv6zHnv+B3kZm2UtHFRH8zhC2PWLjVlv2pPfnivEognbor2TL8BS2JrqqOnoqxM/Mg7f2KJune8EyCRRX3w2u/gRsPOsU+oabXn38f1xuWcZ3wRBbwzV6BIP38DknLmd8MNVTkLwwigCYwhMWaMTTg3nKTv9l1p9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUGDae0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUGDae0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B1DC4AF1C
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724197553;
	bh=aV73twuOL2ghdAR0EDkQrpFsayqee+E6msjHZIWtIHM=;
	h=To:Subject:From:Date:From;
	b=WUGDae0SQnuolowk0lWnnR8A2ymxyFdgi69oy6IeR3eOEVBW/HwwsTGcGKgkY16nO
	 /qfWD/M1Ok6KnnjEsQDp8DyoG5nF4eMkCLWYNMxAEnaRXV0KGvzJHm1AB62tZ8ROQR
	 GBKlX4pdUtJqR18fHTZG0loTEnHtbXy0T+orsdiXy3chdQ2oAkXzHYeaV/qFWMrcbI
	 DgPzO0OgUQwRjL3iUHumIfDqeIHHBDEL3IVH6rGhBn++tDc4o3GkRxRW64/8B9+Vwa
	 lWg4hnlf7u1uUlroXJWmTU1iZNLeLYXb0nYZxEKvxQbaRyxABCSwWuHvm5Cv99ogDD
	 p+hBXX/Gag3xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E47C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172419755359.25820.966417823254652689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074326d6c273e6b306dc8fc852428bbeea374f1f0137fabe21d2753857c1e342
Date: Tue, 20 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724197553
