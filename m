Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF647748F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770131033; cv=none; b=LeW0HzB9rHOakFbDOHqe9uI3MTNUlb3B4bA5QUCc5iq3bvhg6F7BdXd92xo3HA8ylmi7iHWkibwwNwGDGw+xH980i7r0BgasYdFWNozeV/Ut2GZEvKj0lMClvmfNHHdresxoMEVzU19GsG+tq+pdER3rE0/4p0iShVCeN7j8Xa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770131033; c=relaxed/simple;
	bh=yHgxBfs4zTfZ1MTO27KDwaYvCUa3HRRGSrqpmxQhyVk=;
	h=To:Subject:From:Message-Id:Date; b=msAdQ0r25oqOdoLp28jfwqCeTy05KAY/cbS/+XFPg+xdeDY2/g/pbwR9eMKHct95tPvNPXZOC9Oyl72X+RqstNNGjRxBoU1jz5QwYYWsWvf4OER+flNBUu6ZpIffGFUQS30d5S96k5tALlFPTWHnJNnPyOwiLrCm/fYjAxA1dDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B11PxZHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B11PxZHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F90C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770131033;
	bh=yHgxBfs4zTfZ1MTO27KDwaYvCUa3HRRGSrqpmxQhyVk=;
	h=To:Subject:From:Date:From;
	b=B11PxZHjBR+j4i0yfwqdPPB5ZKLl6pfSRcio9vvxhoE+vykZhsLv3OJdXu8JRGiRh
	 1ScqmM8q6QMFFi+c18XnUtihw+NBs/4nre0iEwFdKoHHPZosSalQD2We7203tw5wgf
	 o3JBB9O76GhSnCrJU2vYqA5Ryg6Yxkspqt9mVm6pPHOPBaH7JdsmNR0Tx3KDVCDaTw
	 Kc6yBhlg6EAaVk5ZgIQRrcPeYFlpwya6T/usCqBl9iJsMaA3CLb9AfkbU+ykBwaiIz
	 3unBJwk8zPVxJfEImpRpfGDKDuqyFTueO4wNihSIVbv748mcYzjkIFeMzef9BVxFR0
	 CU7bA8Gm2OoGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F28FE8783F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013103363.16928.13775724645489594254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd45613f66a71ca51e1eed0374862a7ec5e20dcded6034fdff45034bf21631d
Date: Tue, 03 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770131033
