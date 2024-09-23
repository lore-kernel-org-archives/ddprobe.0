Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B937366
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727049954; cv=none; b=rLJSjpFFYpzUC1eNi1u643bmJSMR7BJAf5kU4Ql+xgq2QWvtnDBwD42imziOmGF627EKt/2s8th9bhmA+nmRm59p9quZEbyxUOl9bxW/5A5Sp0x7vZDzr2WWcCjDs8llnZSKuylaVnWqRjpXsY3FbwVT9LtP4W63LeU5bV3Hybo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727049954; c=relaxed/simple;
	bh=Y90J84j4yYDuHE8hKS4XwQdKg+b6GaZQ2TMv2Bg0UHo=;
	h=To:Subject:From:Message-Id:Date; b=ATha6Ff5GO9rlExT6GWRQIw+1JnwUfcr3K8QwBKDCMVq1BqXhjB+LxjXCf6R/ih9IN2nLwbvIeEFfc+Iv/xy8HOZ+Tuf15aWOl08vnvcMFMD1/UzpoHc4F2sU4U5ixqKGoZxLoeJ7/FpVB+HL3JBc5wn4cZwYGTA26b4hOwl9+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWAJIRdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWAJIRdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC25C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727049953;
	bh=Y90J84j4yYDuHE8hKS4XwQdKg+b6GaZQ2TMv2Bg0UHo=;
	h=To:Subject:From:Date:From;
	b=UWAJIRdSxdZxEQHr7z/CrSYXYAFDPm4gzXq42CQZXjnbCeAaK6o05HpiyBvAxq6wZ
	 V2lECL0jfpLcon0D8L06QShh147V6ZLshBgVBeH96DHrazENhHJXSKcWAz4tOPjCBx
	 YawQPQy0lZBbbLc33zpqY3ub80TpM5DA6vBx5VKGVguFJkNtnKMwWfqiH7Ey7f5ttX
	 azm4aOWpUqyqwciR6o0gwcnYYvDzn5ByPwyZ6mzpeQsb6R6FfjOvOURGIrurQNCfuy
	 Re5PmC7VsWJ+cPHD5n7kb5QMpU0NOSbZs8zM1PN0R1m+BMnd32Q8YKkniVsBXCRP5f
	 5uTWhHkpWBHHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C33CF9C68
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704995359.28256.15073096065360208678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7953b518b0359556e55b1262ffe49744c385510c9dd357d28593d87ada86885f
Date: Mon, 23 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727049953
