Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7772F5A06
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779243634; cv=none; b=QqL6QEb+Q5/mUdL1uFJ4XlnhqPQW4T0OL+I4ug0vKrKMHFRicwKJHLpfSY9bczf7WUxEjDwpPZ6P4ZvU2S6y3Hp/vvfOJgB8vFOaWMxYSrHEPwmGJ8xHITvADZrZikx4UjtqnY16imyHd9cPNzTNon4zRT6dA2AkSzXHtlXBM4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779243634; c=relaxed/simple;
	bh=synChgmixdnLEYRkVvKdocL4eOklJTIDwRqJyThhAVA=;
	h=To:Subject:From:Message-Id:Date; b=AqQAQfj/6V+Um+DcTa9XIRaTV4h0KuFfJv7vi9S+1Swd42wtck0WxZlHD62i0ZNyJ2i9VxNLG4b4iBeO+sMbh5tdKTbeXD1pwBtyF/uMiEszdhv3M09yXIA4PnKQ+pneqhqLXCl7j8l7d89UVvmK4Hm4RJLvqY30gK8dnbAthqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcWBYLXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcWBYLXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58E7C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779243633;
	bh=synChgmixdnLEYRkVvKdocL4eOklJTIDwRqJyThhAVA=;
	h=To:Subject:From:Date:From;
	b=VcWBYLXbYdUkjcFmjh0JehTtuoXdsGSJQnwrNgdeJtkuIudV3zBoIcH3jWUuNKoXo
	 9rr7ovtB4yxIhjK7gIAOGk6ItbaiZ9hrRzqMJTBni/aOTGadM/mmF8+9CJQLnd/Lx9
	 Gi5+BpR9/ffP4gUTJjJAqpmHDVnOpMdYNcrRnl3gh7cfxGPwW/aYBpvm4JUQAXhsNO
	 DlK21tbkESVqIciGZ2WyJ3qpaL1jKV0imNiW04eUwimbTRHRx3YBCBqg/QBcmTjSYO
	 y0V3+b5cmJpCMtfko9BIVja0HFCSjaO5ruO93JITMGa34xV3c+bFwd4clykugBmErZ
	 EKSXITqIvlHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC1CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924363369.4801.8467086485493359907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6934ba9a4adfca1f0f5508fd0d178ac39029a368e719a94532348ffe83078288
Date: Wed, 20 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779243633
