Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FFE35F170
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786129234; cv=none; b=UK/94cxLXfOdLZq4zvBhBM1s+vrchY/POwVf/aVruB9ta0JBdwXZmPLVGUi+L+Fm4DDGgikqoRhVlBqL+YbE0La6+PJtLT0GX0wxakU6wp0Kgyu7UK58Aih2Oso5bHB0iADTNiB4FhC0eD3SMpXAhudxw8jSeQaZFmXY/KmfBMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786129234; c=relaxed/simple;
	bh=vz9eKOkLLG+3QlaCjEzYvskjWAWC/1mUXNkYCDX5UHQ=;
	h=To:Subject:From:Message-Id:Date; b=rR9A/dZDqi4GBNEImZBtBXmSxU3GhPmP5Pt+N8s8Luw06ROtMH1DtURZu5zTSt0EiwBv9pEls7FeDVOJtnDHsEFObAz50IcFpaesaDTnB5b28pXjySQ/HHYtTOCS78MDwqwyDVaLg4L3aeS8RunfnfW5Y80dZXqz3REzTrR8AhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJC9LO/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJC9LO/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F9BC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786129233;
	bh=vz9eKOkLLG+3QlaCjEzYvskjWAWC/1mUXNkYCDX5UHQ=;
	h=To:Subject:From:Date:From;
	b=UJC9LO/Hll+FjRQ2VOQI++HWHUyJkNXcTQr9LVuW6igyn3HmDcc2OIruCUA46kg5/
	 yKQ28xboOUmtdLOnpc/eiP+gbj3D+OGVQpod2mcg9TkQnb4Q8ktfB+eIjMFDo6s+3R
	 Nryf7ZbOKtDJLoTd/s+0Kk0amBsigjmvt2bU6K9f5O59H4k0HSylq5cNjDcwKVXJ2b
	 COrp9NABgI9RQRnKCqSG9yk3EgoPkVeiCS2dD/yZauohYZXeOGp0Bd01/g+/JbzQNQ
	 BKgDBPKQQqcgNmTw3FPisZkH8LBISiwKhabEiqrfPpeWaOP59LxeKHOpFJSHyIkIFp
	 eQd6zavLPJFYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17DAC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612923371.10679.4584154486857768220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a933d1affdf15b5f1edc6d9a0bb6bb21c324fcb446b630dd69d56f9cdf854d5
Date: Fri, 07 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786129233
