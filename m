Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451F3242904
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744148995; cv=none; b=mNgByRDRPOHyU1fBNS7YXbFue01ptWkSRd/Ar68XsSpUaduyIRrjMj6zaeJGAwLQn73cKEJjaqbpl5Whhu9ABZM8y9ZOXSF5SsP48HJ18fQd/+yXBiX1RDl3Iu2ZTAplgG2+TYE8z6UUTtzh/hAD4bkSiaIl0G++X87CqoYK/1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744148995; c=relaxed/simple;
	bh=7wMbF1eOpN9iWzPKcSI8aeF45ap8NLF+Lmb4JPuSpDk=;
	h=To:Subject:From:Message-Id:Date; b=AM8ob8H/sAWTv/cnE+4HmJxBkGTKkrNezty5lesVv8GbcW7eA5jfVy2g/pLUTsWsOdJSNJCYr+R0ipTs+2q27HRL0vFlS+DfujTtegjgXNdxgRmGFwBfBOoXTJgszvUvrS1GHIBxDOjkwZBlkj+jA5oa6FqQWS5C8u/Jh3YT/DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLd4PqxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLd4PqxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88DDC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744148993;
	bh=7wMbF1eOpN9iWzPKcSI8aeF45ap8NLF+Lmb4JPuSpDk=;
	h=To:Subject:From:Date:From;
	b=rLd4PqxRwbuL0SGxcT0IZb6Jpu0WyAd7Ci4hdEebp//+tOUVhkWPocpq43fY4gGTT
	 ZH/LuRsDoJHY6Mm234P5cOxwLlFataW4lVgYA65d9S8NjnG1sN7uWfP61jhLCcCCQG
	 rrrFztkJUG4ymX1HWGnEBt3d9cAhtzXKAiR1np44OjeFVSejy9TnXyyIhyKEonwelb
	 xzQIA828n1v/rf3jbXjwlVXtuikpDvSGcLMTqtA1qY205sBvYeah6w/NT44GXjUi9L
	 S95Ij+ATAea5j6xrfQClNaUtS4GdYeNw8amDFFHbh7RN7EYUXmSjraM1UvD+c/I0ao
	 VGzRW21oINH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B8C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414899358.3528.3006125007184491853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e3255b00723310bc631305f4f808acd075602e545c5aafefa4be23f9fc4cff
Date: Tue, 08 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744148993
