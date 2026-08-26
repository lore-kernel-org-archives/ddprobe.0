Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98B540DB44
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787746834; cv=none; b=OG1Ft0+XFjmWu+rVvbVaE7FiaTMx7MHBl1ryd7XVtmO9UNky+i3B9vNTdSB8erwSphjd8t0ip9RJ0stWFy2pBKGTYN8HWFGTO5VV4Fun1yVAXCu3tIfl6w3Qv/UGgwm9AP92+j4riY2avrOcbk9MdSXL9iC1/jpRio4h4Kn1XIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787746834; c=relaxed/simple;
	bh=715tJ+6l/GER69uUGGONgBvRzicHd/Wawn6msAn5jHg=;
	h=To:Subject:From:Message-Id:Date; b=GTpg3KHHXt7OhBjId3blnq+IDN8UJy6j/tC7FAlzEiQyGu+v1DjqJMPNXSTAicK1Zo2KAOTZSN5wT3rF+PkemuhRSfbsDaGbVfzV/jPfqDG67cH/Ue800586uLmfldDp+cbj4F064QMRgCrVfFmb6BzTqKKWq/Z9Rpf7SrKw9ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HP3tzrVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HP3tzrVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0092C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787746833;
	bh=715tJ+6l/GER69uUGGONgBvRzicHd/Wawn6msAn5jHg=;
	h=To:Subject:From:Date:From;
	b=HP3tzrVpLAs5vwxpmAlcbEGMPygXwWj4UfrVpmVKmL6RzGPy4CEc+bipwS113c2K5
	 GyWXVHqdfIwqSOGkaHXHyt0snI7cELg9R/1UoTstRl0mqpfXtSW4VRis+8SY2A/kBx
	 LWYKtGlNRn3sL8+MQE2G8EuEQVsAPV0RrAL5Ux7kLCCrLwLtcDLJVxqfiHoJ78kJLo
	 0AxsXsk1wWJ9sGb39jny2SzgeCknbP+5xAhyPoW+55qUQLwp5v+XBfdkj0l9ca1L/Q
	 d/88ts5uzCfJXG6oTmB16bYI0Hic+gHNqr4Cxb7D5lhJ+RRQVOEJtqg0EG+n61is4L
	 WzVFuhxHsZZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB3C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774683368.4939.14699865803716643654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df6b7c59fe640c58ce68b4233582d23fa5684ed850df8863b730612c35fed51
Date: Wed, 26 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787746833
