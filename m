Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0622B2F360A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777492054; cv=none; b=uV9D6K/ORvd+rWnaqVKBPpukDqAC22TWv97sS4vI73R6lREuCc4ch2rI+VgisUCKv5a/uSFyKv/Pdx9eX0Dv1e/ppBdgZyfH08Zv7JwpRnJihkrjjpdPsL2TTnT7NMt6mUjY+fJywFAl2CzScr0DnWfb1LWmSDH7gmh6oT/BWSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777492054; c=relaxed/simple;
	bh=5FdQXEg9ydEOAldkw5lVoerop5BZ+KVjfpNePsZag5I=;
	h=To:Subject:From:Message-Id:Date; b=ngZnw1SEkJm+7Bau8T8mBheIV0QnGJrDsdrUZn+CchDaFkEGK2IyaW68LzkGUgmeOHz4iAD5xjzH7tAdDtVU3lrGTTwG6NCZ0Cg1IDIqsOzE9yIfb6iLO0/LPNvdixazG5yCY0HnobSxk98waYl+jeAxoO4BXpd87hxfRpEzIvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7Mo+ngv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7Mo+ngv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB38FC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777492053;
	bh=5FdQXEg9ydEOAldkw5lVoerop5BZ+KVjfpNePsZag5I=;
	h=To:Subject:From:Date:From;
	b=L7Mo+ngvXDMHZjIMx3fSyzONw9BCOWzU+usMY5MVC2ugv9qJSa4Gdf+POi+pHNiQ2
	 PiCyqFD2wVgev1xw6K5J23g6dKatzkp0+vdLRdzh7WbaZJTRdjlBzGKJulf1B899ml
	 CXifM7BwTvltCswYP+U6FxfI/pELvnnkyacVNKWlCiSnT2EYi1vtA1va5r+SPMMh6J
	 sHj/59aaXwPLQAzbRpRTMW9mq8FhpfcBKrYsRR8rHC7EZNW0DC6s3Gmd/gHZfdKNHn
	 UU5WAfPEWM14+s8T5eiYQECNwg44h4/J/s7cCgKMZLypwFndsURsqmfSS6mqmxbXZT
	 ZuZLyHvEkSe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA61BCCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749205368.19981.6378975040383444603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4882ecf8b04d119413a070db3c8453d98c598e3325039ab1baa9a146fe200670
Date: Wed, 29 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777492053
