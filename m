Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A63345038
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792301434; cv=none; b=tvDJ+qV7cQ8HGAcwYiH7gTmZJ8yMxBKA42UqseQuwJ4P5rzytn+yWE0Q6XHC4Y3e8CPCTDrH8ZLW8kXhyyzLGO99j6lJLHyRWwU1kZ/OFzDLa64p9zDcCKmVJ9sgIx6yBE8qSXlT4x8d44noQppcN9LPj59hTiJ9tr7Niy5jwmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792301434; c=relaxed/simple;
	bh=w5Sn/gthTT5Hvn1z6QA2JEe5xwnfdxEkJyHH8Wc28cw=;
	h=To:Subject:From:Message-Id:Date; b=t8P8iu8mDlUbyJwcsvsX/FGQuU/1avtF0+mlClcFQTAACPJZFLxgKMRqQAqdXPtc0Z56bgnZPCUir8tR6gGyW3zmnA7w169q5YnhKi/lDMzrrqHJng1uVnmLBwFZIGkT7g+qhOI+BXwEOZLD3QwqMqbJKAVmIc4Dbe6i7JMuqFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLoGS9Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLoGS9Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BC0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792301433;
	bh=w5Sn/gthTT5Hvn1z6QA2JEe5xwnfdxEkJyHH8Wc28cw=;
	h=To:Subject:From:Date:From;
	b=PLoGS9Z8kvNG0RIEfBtuXQhoMvTMFc76bE9KB0Gpv5UbLXBWEcx43Be1InM0iHtyD
	 8ff6/IHdkV8eGhmoQOg/SQTLDzTAz2X2gXZIa3lt7ZEKSRGrc+GFiOrG0NHYqVWIb9
	 /80oZkdewPrDRlt0pzhWmo4s+MDmpe0Q7AcHEeNQbYjKHMaaGOpj7fQOxHf3MfXerR
	 KyepOKLtuk9Z7Sa0RAXHRPLKrljLOhViuWcHQmy5PvTDvdldQhPrq+b5B1D1HieT8D
	 ORQtuL+N7vwjYNkVPT64TrhZeXr7ms71hLGA1I8ltdrL0oxidBYeie0xItQa8j/xzx
	 nlCerfMUq6PjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE07BCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230143373.27226.7018083362459383335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59010584212a05989c93541911a1755ed188e55fce61786a371d22c9c6ada42b
Date: Sun, 18 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792301433
