Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C98D2FF
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751680794; cv=none; b=p0xvKOr7yA76I9+QZAzCb4DUJMlLtmCdDSh/SiZzyD2nZHFMu70yCVChU4N3sCf47KHt5aXUy3zyMXAHQZir2T5S7C6q2fBJJ+VCe5h5aBUXUtNRovoHNhJBgw+sVqv4eu73blKYqr7suiWHQKcwuoKHUrLKowY9OwWbNcQAbjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751680794; c=relaxed/simple;
	bh=m2M7DmhNyI2k83eGaxdK6qZ9GrSL99k0MiCmX7j/gvI=;
	h=To:Subject:From:Message-Id:Date; b=CvbMWnLjh2u9muccYRyDbnzpiyQI4wGONirTuT1ngjgKt/UrjzXvtxUL6yd+IErLUczfDlkL/MpFwxbMvpm1p+rjLGQNxJhVhHpBh2McN6WvucxPsjqPiwENirb99VXZGU3Cw/msoVKC1vTrggVIbkfTQf8uU2PPI6lX95k/YhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBNaTdDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBNaTdDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4062C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751680793;
	bh=m2M7DmhNyI2k83eGaxdK6qZ9GrSL99k0MiCmX7j/gvI=;
	h=To:Subject:From:Date:From;
	b=BBNaTdDjAQaQigCGLwuc8YHX1lLT4N2mFFipsLPJj/2uT8ZTqW+GWIjeDt29Rbag0
	 6ZFtefMtH7KtFE9QNiXh0RmuBXYWuVi+S6W09qyKlxQYK2FgRdlWp6/VlRsQumYNbB
	 47+axO3LnBfywOzn8yzoGBK1oTzhR4NRbfojT+vEv+EbyWZZ3tTqWEn+4dcHFgWXrn
	 V42s35XMrLuCstb9gqBuOA0X09ghnE4Pzub52whJ+o8LG5xJiXjE2ApxetgAk59z2p
	 CYMmHw0M7684WDnDBElYZ4otAeyaMycJnAclUT0wuWx9r8GeWHROoL+AgSyTCMJE+y
	 0I9m9LdSb4ccQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91907C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168079357.15718.6489757948112642142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e41066e87892f66bdd673ab1f4646fd6633288b3cc3f98fb957fb2b9893707
Date: Sat, 05 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751680793
