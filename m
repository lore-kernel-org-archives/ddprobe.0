Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E93A35977
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771546494; cv=none; b=K47QcRoNk4i5wkRQlsRA5O/gBzA+NyPlmJ2FaNxri3ClYVD3ykhSjj0CMHXiLQQDJtMbun+wc4NQgSkK37r3EbYq0KyEwxv5OuTOwvyv5WejZ9DApI4xLPKJrXxj8q+4GS8qi90jNsjny0ObBeOnbJ+pH/2YHPaXxD9o2KJJLz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771546494; c=relaxed/simple;
	bh=z0h+RjaMwM6HkLROu0Z77yGpXv1Gavit7oiQviZeWNo=;
	h=To:Subject:From:Message-Id:Date; b=FjqQOnSuWk3tZ+4FOwS2DvO7wmCXrWW4fm0HUbagwT6vmsawvLis8QLsgDFykIBupuiaORFRW+PPoqVnI9o9dZvnkUJiFvMqZpJxiOtAvCOFTH0MlWwFj2cNuNaVZJqtCcMjblG71XSC0jI1bTo9qGqaRH91pqt9t0iMfqzmhjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Algs2hCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Algs2hCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31ECC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771546493;
	bh=z0h+RjaMwM6HkLROu0Z77yGpXv1Gavit7oiQviZeWNo=;
	h=To:Subject:From:Date:From;
	b=Algs2hCQLoQh8XhfMLb+5LIdF0WAawTMp3u6C7dxq1tN0Nxsg0bxVYz24R31Z8GS8
	 R7oWIbO4Mu0D/5RD6w/MacU9Wey+lhQWL/pCx3IM8qTLiFUiE7wAuaDegLoF1rN1Ds
	 5LvV/hwcXqB3q0iA84KnET1UbztyZw1c/bYtPGxVrDHJ0y4t28u/m/V3b0A3x7bp07
	 CztxahJsRyXsRgR3fq1VLZuVOw9IdHr21LUIGyNxDOMLf56NrEZfD/2ViBK9FnRxu/
	 fXWoQ4xe7sZKCr48gnVy8XOyYSEa+8dd/y3rGERVhN36sBd8h0w/zsfuozOn9qqwx5
	 TrxASgjEO2r1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0CC531F4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154649359.30331.17104153512260303992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbc72a1085e12f540072a19ceef4da833eb519895b995c71face9d432294351
Date: Fri, 20 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771546493
