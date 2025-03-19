Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5860B250BF3
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742387395; cv=none; b=JQoxUOEFT14Oe6DVl8eHiZ7T0IOfw5TW6xZjIv9nUioj7Nwnx+0lnNe+cCE0ax1vp33idHx8oqxOkyih6bvn+xVCOlmhI736BQH14j2/UahfXbs2nI4wQxVsYxMrygQAl8Kgp8q7J4dTzm0n8kk6Sn5xA0YXrYAbNiof90Ej29Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742387395; c=relaxed/simple;
	bh=fq08pJCtQgjwtbSK5jTveS9cvMvDNCbuMR2J6cJlDp4=;
	h=To:Subject:From:Message-Id:Date; b=Uj9GoKClgqFrYF/AoPR/olAQZ5QvK5FApQZgzmfzGlCloNxs6Hoz3cDk2ErApbKn6QqZjcRAacfRAAPtXuIqsHnWAj98pC4yixOK2uL5eyd4VfWUtOtRxjHdX7l5tMtY8GStpSnoAN2J6SqmTkqlxZVBZOUzDVp3wYnlmct0I7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zzv1Ssrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zzv1Ssrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0F7C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742387393;
	bh=fq08pJCtQgjwtbSK5jTveS9cvMvDNCbuMR2J6cJlDp4=;
	h=To:Subject:From:Date:From;
	b=Zzv1SsrbYQWcArra4OZbIDxuq92xH+mJkZRV38HxWIYCnV+h0+6Tt2+I19UBdPNWq
	 QKsi19MeixelRQBDcBtNVukBTEsU/jVwk9TrJVwzRnM2vKrgZhKQX4IshxkrTtkBzr
	 OkHL2IJg146UxV0FkPNmaJvn0AkPzw1bDLfYSmG4dyPWxaR27rj9tnbF9YzhN3gBo1
	 FU1SYNL4Cpnbh29fzeFGRU4Bvjin5C7tbBBTRa+OItGU5TcDG+bEc2KNNPhyee+8D6
	 HwqSZQytwY6scwg2iXPpxPU308ZQdUTyK9xnDwLDbsLr7jl2kObit1CYD22zdxfQ4e
	 qA3QiCBs77pBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A008CC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238739364.26004.14084191450179458667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e7c941eb7c07b5d086f017bfaf456e1c06242c31750f9bd6883f82ad480e49
Date: Wed, 19 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742387393
