Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB0E14D432
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720739843; cv=none; b=tzrNTLx4e+ai3+qS0d8ogujor6ey1ZWOxgHvp0SXrSfJv30WUoOk33Jg/NBApSIO6FfTkiGsPgXIf+uFfrvF2/FEQ4KVJ66sWpna4mqLlEcMLZjf+8gZ0Xh3a3pCEzw8ckVY9lUW+n5cWwZIvtUCYdgf6osjfZxp+dZ18PvvCDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720739843; c=relaxed/simple;
	bh=lswh8W2HF4/bL6CpoeC0KfNIaFqkEWCYMo2RJ2fN/cg=;
	h=To:Subject:From:Message-Id:Date; b=cdcqF/Ih7L0z4Tnhd4uEZfkd2KrtPo3wL/x/VxB2CA/oyfD65mrS+aUfuSCKAS/8BEwl1rQLC9LbUUIjRHEZZ9xZ+8gBtOvGfrgD0eT0iKMdADAC4qC54KsmLko5iuNjjm3Rl+nZsPzYTm6HYFNGgjRSLf9t1IVxMTRZNypjDfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+7QgIzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+7QgIzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71D9C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720739842;
	bh=lswh8W2HF4/bL6CpoeC0KfNIaFqkEWCYMo2RJ2fN/cg=;
	h=To:Subject:From:Date:From;
	b=s+7QgIzOwkCrb6U2s5ra4O7i4k9P+1T1M/g6ekYvL6pAZKm9XlBiOk/w94t+1XJDN
	 ziz9BHYCObdYdChLc28veUPaj82aE4dB1PMCgE8jVtRIN5De8rZixUueUJldB9Vn0K
	 znN6asa+ZqY7jBXZfvIZF5HnaIoetxoydnQkoBU235IKuiHcxOnEUbf7H+HckxLcZb
	 OK42vTjBQ576VvLA6AwhLNFij6cXRn+LomtRO6DvEOePQ3w+DlYSZR++gh1Wue+0Nq
	 sloQAmxGyBz8PwJwStQ9Vuziq0o5WJjGw45uN5CXLz/nC9pp3CDFnZLyxP5U4X1xK1
	 AilVvJ8rIZW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F47C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073984276.27260.2392503058329697440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea8bc20e751c465a93b442355b53aa93710d5bfe29727169eaa69059a81388c
Date: Thu, 11 Jul 2024 23:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720739842
