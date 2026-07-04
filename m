Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535F94502F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783188514; cv=none; b=aPnJ8gJGA9T8nWLH1YjwDiUsGeLzCp/yw5Z5fPdMlgSP31mJ6Jz11sf7Mx5NJb44kSLWw3nqogkAHJ1lF1rJVG1JcHUkLawb4DR3ar9R33UZ4TS3YtMnu6FnJ26y2B5WvV185fOzw4HA0mzq0idvq6gXA4gnLqzExcN/6J9ZAhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783188514; c=relaxed/simple;
	bh=cjznnyjvftLIATxphStkugw+YNTH80YxyA2sZJOI9Qw=;
	h=To:Subject:From:Message-Id:Date; b=uiMesIvqDDvPtG/sFjJELodLII9asxgdVAZlKADqn6Xe6tiIecZURq6oWE3zT4cB/j/1qJ7fzF4mk9KMtBl8HvXa68LMeZtte+eM10f/XddmfyOSul48eT9I/5YJlx29SuKKyHyEU8Z59cGaltpe30Ilun7UeyAWbvlQ9+UtTBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwI7ZSfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwI7ZSfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C6CC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783188513;
	bh=cjznnyjvftLIATxphStkugw+YNTH80YxyA2sZJOI9Qw=;
	h=To:Subject:From:Date:From;
	b=OwI7ZSfGHYTOOqUIVvsjQ/fXRLqtTi7Ce5Eyg5nrhfaWuZSAkm8q2ksOYH39SAWkK
	 njSnWTk9vQQEY6WWibaP8hmIayxwmKS9H7/nIY1G6tFwRgWHFt96nhwrEGTaS53UT4
	 v/GgAi8gZgfQ5GBZDTq7M8v3vu3W2eSuZAVDeZDXPAcj9aPIYmJHPDPTW8rKtkMiAG
	 KRC+VF7IuCTkeDoDpJOnxtKJwcYRlvYZTqv4EVRvF7ymNEmWKgL2TDkoJMo3EZd0lr
	 QSYuXXVbzxucaPoT9iiKuCna6X28AaQ/jlD6mojDSRJX82z3pGUDYU92I3p6/f4Sqr
	 Q/23zpQV9vJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC146C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318851368.18247.11220639388185837690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28779a3ba446f0ea99f620f028aa78be053a14c97827d3620d64b8fbccb64785
Date: Sat, 04 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783188513
