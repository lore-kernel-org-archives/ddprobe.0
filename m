Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CC9185935
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741616934; cv=none; b=WR298vFeRlxKYHpEbLGZjlHbkLOHzN9lAgRR+J3b1yPgCzAaukM1opGO0LZE22lG9S+Z4WQJ+W9d3493Sw3oATUu7mP5hv7A3WPE3qwcP3URQqT9mRKNYtReb2UBiJTgFaHPAMWFOqTsZFTp7oNoenegA7eFjGEMZL3GDtjp3d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741616934; c=relaxed/simple;
	bh=OtNZOge59nTCdCWKVGpVVHkKG5M1/LvbZYVYMkWrW3k=;
	h=To:Subject:From:Message-Id:Date; b=sDobRWlJPJMEZttHlLj6J5HvoxhUuqa4wJ3Q4QICoZwCqxg2XQGn/FtxVrWKZ07Kk3vwwnY4QBsYhi0TZFfvP1mVD9nervT8egy96Gp73DaIe1d1L34Una/4/IbAsBb6wQqv1N5JTE81YT5Tz8grEH5VLB0j+/6KSeDDXrXo9II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElvDgYNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElvDgYNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD6FC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741616933;
	bh=OtNZOge59nTCdCWKVGpVVHkKG5M1/LvbZYVYMkWrW3k=;
	h=To:Subject:From:Date:From;
	b=ElvDgYNfMTbu4az838N7O8U3ZOPe+fOgscpIftrGyaBZlz645J0qurpx3kNMsIkyi
	 jQHlazee8mid4h9UuCbkBYeGPmHHQjK2mwWknkkO3Z2F/w8fx0TmfHzTOWM9RGpDMZ
	 9Iay/DyyR2SxvTrg7ojvVxyR6+8XDFL5lg5D0vm6/xE17zUkFB7bEniaU3jt6AiYZ5
	 Tx0qp6q+bU9ARWMpNJQl89Gm0Z7GpCS8Rs1GHPDRuqK3lc7qi/g+tMUPa9vPO+znmT
	 Kzy8jYiLhhaDcGuL8l1/KZLff4JUOajupnHiOLYq7SQAHpXYUbO72cegQJMsj+iBWE
	 glOeUXYYKD2Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9955CC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161693361.14467.654924323487662051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf127904bc30c0d80f7a6b561af8017e8675a8e50811fd4f8fa305c15783a666
Date: Mon, 10 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741616933
