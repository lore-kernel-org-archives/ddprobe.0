Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADD41946DA
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778031454; cv=none; b=Z0ivKgQXdJ9dnFxmhkiIYkeR3y8MO+tqmC9V7zVGgFFel5KCy1UXVr9WBUTc0s/X/Vh3nYcKcTnN6nvdgCdmtd4AVgX9aVuvo6+caZs1YTiAcXT9nBkOo9wtwem89NslI64klPBHug3LjVHjvx81HgW46HaUk3jPe6oZmDHOkIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778031454; c=relaxed/simple;
	bh=HNV9kf+9feOyYONwHti7+5jXuV7elcPxFww39urIKuw=;
	h=To:Subject:From:Message-Id:Date; b=exFTRi1bhTYJsICC0dCIB5Hlw3fBDi3yFrnJ66LGd5nQNc0IATjzP5ZMU/yJtDsSttmAUvUa3xMtHUU/ZlDJTTzUJ4t056Y5GPOmH8meOj99WllQ4mZ2xE09jFhFrcLC3nazGcaIpR+mMKrw8L/MC5LGYN4AqK73eM2JtQTrlfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFmk49t0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFmk49t0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7C7C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778031453;
	bh=HNV9kf+9feOyYONwHti7+5jXuV7elcPxFww39urIKuw=;
	h=To:Subject:From:Date:From;
	b=SFmk49t0oPc4Ou6KDPhgOiasb0Jmh1P7AUN52Kf2Q1lUkcwUUIWht5CHOzHiIJ3IT
	 6beGCzSZhs93hinIngGEY3b2UwqrDCrPDfQbrHmJEYrFmSk6SxX457EABLCbrrNerR
	 Rv8ftZZSuqg5DOcpngRcIcKhRCdVkJiQ1CxrnqBYavx5qTP948a2uGtirr4k4pMr+n
	 NZsr7ChzT2uqW5/7IwjjoH/q8lUs7GgUXyazLtPsrLix3xfD/QkgEKdaj4E3bVrf8U
	 NPR8IwvQk3VWkS1bpWDrJ3cT2CRf7qyGYh0DyKptqa38a2d7YjD+yDjYSm6mlZWJfl
	 U2oLHNEoKfgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5ACCD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803145368.25928.3628644855402517652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab350840dd6711d86843d1ad8f1973326ef150da504a86b0d16656e2f21d968d
Date: Wed, 06 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778031453
