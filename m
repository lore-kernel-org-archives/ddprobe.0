Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7812F125B2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754617794; cv=none; b=koM3Pp1HU4qJ6Q7dm1BPO2UnnRnbCuL+uCTEKBYyMyZ4YzRMyMf7TXbU57G+LNopEq84Ou4s4j5iYL6f2UFpmZoEuVoux8uX0KSSCnbDbRnbwgTrnIJVrmJt0MkZSwVYcYRC+cvA34hFYaWhncaRqpYyGpYOGsnBRlYCMZeMTTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754617794; c=relaxed/simple;
	bh=t4Pycr9xbdUtNW57sH12kDk1AZt8NSoKNV90y5lqUH0=;
	h=To:Subject:From:Message-Id:Date; b=IHRj80j6Qion6BxQGSbFwLe9FZM5I6GrvWhXtxuOZk9e5U1BzW56OwKq2TNJRPAdt9TVgnlUt3Lhlutc3XxFOamNWOsHHaZYbBNTFVe1VeT+UCLwdyYZ3ecAF6P3ofpSdpPLhRu/PaauQOhDJ9WdNFLFiQUF8yliEdU44FCWOMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIjRj1Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIjRj1Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDBFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754617793;
	bh=t4Pycr9xbdUtNW57sH12kDk1AZt8NSoKNV90y5lqUH0=;
	h=To:Subject:From:Date:From;
	b=YIjRj1Ua+2tqA8ERP5xCZnaPsPxL4+qFYTIM6um9kC/0wNNPKSJ0eMSzJUUBC+kQH
	 EcEBbnxVIWuVtGDiBdxC7VBfgxGvD5f/Oh39Is0CnfQPqHl192n+r548L7H9UEe7Lf
	 bsfpVYYShQKnRH0pxURE07V8anQ8766Urf4SxyWVZ2mO9wOtHBQVjKIIBxJKvNHWjm
	 z9vr7nV095ArzK6HT7DlYBhlqp2HCRJGv3UviuEJrnJOveIqT2KICX76lTdMfkLuWg
	 eE+irvw/N5BTJSOoFvoe7feEhWgQCbuMHyKvYNvrOagEu09mtWqGTuJl8pNkPGRAbv
	 WgK/7KLWezfOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9987BC87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461779362.26468.3786722476103732144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fb745e87a2bba9d06a671dfada8b12803e46bcd2107fe13b7b50dc08792d22
Date: Fri, 08 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754617793
