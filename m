Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31245372691
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784303314; cv=none; b=SJSQKhsc3Omkx5zo/l8n9Y5zXGAmG0Gbe1b0kXy/1r7tl9rUc1nOUdDceLfsTz7Srxvl9NAuBdN4Yut/yaACiM3k6ABGUKZ7fvtAdO5FDBJEkYRUq2+GEfLm9d2zgz/IjW675cEEo9NCyfOYkSLkDP/Ip8Q7Xx2CtBwoozpPsWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784303314; c=relaxed/simple;
	bh=LpfHW8v9zXbvMiDYic3gYwY6yyFxwrG1lEzn7dDwHuk=;
	h=To:Subject:From:Message-Id:Date; b=awvy0N7y3yeCKcO/YWJLQmfehwavVlkSvbtEmofuFlaHKXEvGsCdUi/40QkroGjmEtNwF1/Yd78U8N77CpMGIh3r2bXPQRJeOoAMX8J+aSyGacZhx1m/wpM1zqrgLtIDEWdhmoAI980Uqx+DFv+RxgNVkLgzfZjO8satpCcJDHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJsNTt17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJsNTt17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA60EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784303313;
	bh=LpfHW8v9zXbvMiDYic3gYwY6yyFxwrG1lEzn7dDwHuk=;
	h=To:Subject:From:Date:From;
	b=CJsNTt177X7pANERVuLQX+3eAUk6P9rBhq513/rJeo6Y9Q2giUl7rP3gTI2cLflvz
	 YDf7+dAfKJXu7RmsKhDt4BLWaBVD+MhKb375Gt9ngaRxsIH3AXJSDPo4lL+dypyJdl
	 Jtt8v3PtZxmobTf9uPqrg7vKIGF+qfc7N25KzvRqc5w8Vqrn7BKCVgUPCvt+QsKMS2
	 WPP9GmJPOQLcZu8H9rxHvpHmSGQL8d/taarBa1MtRCcO4ctc08R3RRIwktVuCKDHum
	 B6+PVV3TcnDuOO17g9lyQv5FN12P7OEq9T4tngxVt64qbJVPOt2CymSgX5YgcmDh7K
	 AxBmz4OlxBPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D1C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430331368.4345.354272732093264028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074bc5c997574869d160a1ee9c5e22e56a54ecb54327766d3318594053393ed5
Date: Fri, 17 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784303313
