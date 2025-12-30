Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D5F24BBFD
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767119634; cv=none; b=DTD9ISKedKnH3yBehF+P0R59GCR5S7hg1kknpiFA12J86oHxSi64406bpUcFx8w+2NNlFXTJ1iDYnVDeufIM8/zcyanl9Lacdu84IUIc5xs/9+eCDvLl7rsd171Dm8GfV3H8zaTTyrA9/gKfkiVlLh1S6qY+I3czz1H7Uiy3mYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767119634; c=relaxed/simple;
	bh=vGlxIBaet6L2s1wiIfF4B7eHeaWphJewSwTWiWVeBiQ=;
	h=To:Subject:From:Message-Id:Date; b=u0QegulXXMtfkD3bMTKv+RhlgZas4VOOajXAIUIaqWYNcm7daNSkzNxFWuFLWoGczWSqpWU4P0KaT2EFKMtPR1GwXyQvE5NfTWRc/Wg6hAsFzc2bW+j5u/omWZZLASMsh/3qFCQOwgYJPsN1JHvT1CasKtA4GKYp0egXFRtCm/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3SLQh8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3SLQh8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDEDC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767119633;
	bh=vGlxIBaet6L2s1wiIfF4B7eHeaWphJewSwTWiWVeBiQ=;
	h=To:Subject:From:Date:From;
	b=c3SLQh8E5PyngBshWi25ZPccty6lFZ5SoaztUoL0ZQSK+OZlSCQddTebn5e43gBm/
	 aGiIjXOVs0scBKNhNznPY9e1Ya/9nnS1/tr6jUedmNnHGxb+puew1/maB1Uyh2ryDh
	 8JC5QKZr19/UI9+mWAWNclXUDGJCZfuy4ItNt4nESl/TMLzJu+BhR97ckpH3d+kRYS
	 VtBP+9Qax9fQCCf8h1hS5+3YbJKyL1snfNc+IHH8J7hgiJ7z8qYwJPHiKyFKS8eu0k
	 D2IzPn4dK/G9zu4tCw5ywSr0RB5Twnt4HYHXZLDhcpA2D13NtEc0hs0qNHMAONk2JX
	 HapEO9FT7QjvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F807EE4990
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711963357.18698.8072900237898064677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558273d8026e45bade644018c135badce6536bc5954db07000e984d023f4be16
Date: Tue, 30 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767119633
