Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208B77261A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782806914; cv=none; b=PMYJmiaijttK4csoP5CjS2JEW5vWaiBAlJ/u2wx1kaAEIR6mbt9vt1tynq1LLZqfC/mApBpRT1Rq7JUIAnsn8mmV6ehIIP6Vby40BALbk8d+qU22jc0M+lt0i7QMcrHQ01bG0pSNUWi5QfELv60VZ+GCdubcZbg8kPhsBfo2J4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782806914; c=relaxed/simple;
	bh=p3CgrSbBgRpzxHcoIc63omacNK1DYW0HaVng6sd3hi4=;
	h=To:Subject:From:Message-Id:Date; b=ktJ6SGopu6VgNWsI3vZyFunBeGWh5jfiGMq4Wv4Miu7BWn1igDvk/QOaLFlcmgthQ5GSFSO8iuYjYfQ6Hexk/XB3aFwAY4asc5SL578BjFeVhKVu/6P/zVNlspsVyYnWQDb+wGx2Uyr6y5mIFEI1mKbdJa8T/EuR/LknlRE6z1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhGZ4Ivv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhGZ4Ivv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15F5C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782806913;
	bh=p3CgrSbBgRpzxHcoIc63omacNK1DYW0HaVng6sd3hi4=;
	h=To:Subject:From:Date:From;
	b=BhGZ4Ivv9aX3cJRPsPW91HvFmz7YcQqI3Dc6KYgBNCB7W7ZEVVi9P07ikq4Ig63Au
	 jYs/zFKNgatUgdhdfcKbEhqXxjTu1owdpnx1kwHkzoLS+Rz8VqHK/eRV1mBELFExS4
	 JAwCdlHujL2Jy15MAgYCZgXYQmI/bogLVnd6cxecO8nkiOkfW+P6c/MjB6D1qhec4X
	 X/l0NRiqtSj1nVvBYKd5aSfypvvhkEENTHZEaR3IL5qg5EGaHDgOOe04Cd7rRmVTfE
	 1Vf3ZnpQns390nSx+RvlEIORyzG7GyZr10XA7q6RuhbOaVxc789ci+3Lf+bY5pGQyU
	 ikUxoQFaIUTqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82D5C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280691368.16749.16974498909924717805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af104d44101cf239d29262a9ef0fee241ace5775b620bceb587909d43bbb8b97
Date: Tue, 30 Jun 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782806913
