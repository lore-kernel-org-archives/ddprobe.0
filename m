Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E11372B3B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779451354; cv=none; b=P6BkKVAAQhZ1HMaVbBncMOAlwGXiAA4euN3++9jfRNUcyq8MH7TmHt5xsQVPGjN239u/pBtbJvSR4iVCdEdO3ANbRXimvY7OZVhcjxC7s6nHaVH4kn+qFZOoPVnMDKq9yu+vca6Lb42HzWMVNekHbKxtqfG1shGSBXLrsyMubyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779451354; c=relaxed/simple;
	bh=fmx4r3pMotxu+lyo1WT+AsgWbvHx79BqNc52XKs5twA=;
	h=To:Subject:From:Message-Id:Date; b=YOBkOXOtcAf3vh15U5r8oqPaHQNQDZfqy5cukvwLUoxyV6AlvS8+hqmM4/htMx3Yf8jRZwaTKrQs71Coir6LmQdtxduOxLhgD5DkGcbGGlkdugNBwMZv3vSAXkryoQpHLiIs/7y942WRWg/+fh8RcMrsc6QGSYRubZnLRXGBi5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIYaYK1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIYaYK1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C19C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779451353;
	bh=fmx4r3pMotxu+lyo1WT+AsgWbvHx79BqNc52XKs5twA=;
	h=To:Subject:From:Date:From;
	b=OIYaYK1DonUq2IV9aPsNHCTXezjkEFQ+yL6zSKgu+CIjCQm2jE9Qf2PCiahpGoyg5
	 uwhwVSnxRbwu2Oqda5XtBUTLZH8EPMBCuX8wjmC0pO9JOyr8DSbyUATGcCQed36P6n
	 Voe1aSgXs8I0HGrJs5WRWuk60orjbup0o3bPzuIW12SpioOkWrCQ9/aW8BURyKy0sl
	 ehurcXxvGLX0eRpR2/KfCWUW8Q6eJ5EW2qMe+U7IryDOMBBtRmVvUhPOBegStMBOok
	 44SQIXfsG24H8wbQDnD76v/RIhWbKomNO75brUeFl2VyNShcouRQxmvpRczW7djEGT
	 sFbyw6f2F2wkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD2CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945135370.10196.5391682520244445233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d1529d00f0543862ef1e9db99baa752c3e07d798d7c95684354e30f844f02c
Date: Fri, 22 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779451353
