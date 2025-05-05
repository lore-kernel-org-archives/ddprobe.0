Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302882FCA8E
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746488995; cv=none; b=bLM9mXqsLKWVHsPSpyc7JqIxCt5qr3MHkDJIXAkGSgbtDvz+nf/UBryVfIiGb6IeoX5WS4S9jQF5SUfxwHbKJ50scJ1r3NaAAWRMlXZbagC85M9nO1TSEj4J8OBEcSFfJiL1PZhdeB3HIw3zrSegmvFE8Rd56mW2fm/NkY1me0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746488995; c=relaxed/simple;
	bh=wZtLAvzl4fU38p4+6cIR1AJKycGMj3iI4MfED8F0dIE=;
	h=To:Subject:From:Message-Id:Date; b=p6Geh6FY5YWZzjzSWU0lj1AfVHYnn09u1DGaRZjlWAxdXH+0CaRuVlFdXEs5Ual/z46A5vdOuBCXubTCLKG591njCj2XbUu8qOGpEr9+uuqBdjyt2SZ6UAYHmvU2E6o5SFa+smnvK9unldnqHF8uErMfIOSgUxQ6H2NF/sf8h/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkcfHTvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkcfHTvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC335C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746488993;
	bh=wZtLAvzl4fU38p4+6cIR1AJKycGMj3iI4MfED8F0dIE=;
	h=To:Subject:From:Date:From;
	b=gkcfHTvQlNzbQeYGHVBCBJyUnwEwTllvLluOCUMHZWlQw03uHqVKH2LzbDwq0+IYW
	 Jj8OBy3lHx0FfOrrJT3itDVtIvLAeF3LCgRg/wQ9aBiPVBIRh2Ffybs5a4YJfzG1wO
	 McxQwNe4UEG26MFM0HLc4Jcz8uhY1HucGLiBAW1H///05DsPVapWihH+eZHPovsHt4
	 sgBPRA84Zmepl2RPJHgYD6UpEgaoRleUjxFV9/Bh77nlJ40YbjFkMw1P/Y10nBH1w3
	 Zu6WJkkuNhgIVgMvgHAHHt1s31Ig4v5WqwC0YVQvvIRjTXGrQPEYkpX2s8L7z6Ftb2
	 iW5xgmDN6wedg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9842CC3ABBF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648899361.28653.14539348514976434286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2181f93257b9cd287d3a0efffdf689371465904f4888a4b2631b064807f1c794
Date: Mon, 05 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746488993
