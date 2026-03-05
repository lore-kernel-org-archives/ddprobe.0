Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FA1220F38
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772673294; cv=none; b=jYnhmc4qR017JorCVpFOm/C7YgyuzREBsI0368YHdgDpojSiK5it4CBYrL6p1JUTZPb3cAgw+ixAPfQheE5cDzs+1vGyUtJAk6JGRicpUK4gKgh/6UZ6k10pG5gHHvDdTZpGEZkUqcHixc/TREPXCtHwbXwJ6Lni7RrOwMgik2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772673294; c=relaxed/simple;
	bh=cCw7YvrFdf359+fJHI7EX2C1/iBTJ+ZM/Fgd9MNplV4=;
	h=To:Subject:From:Message-Id:Date; b=IRmVEfbEXbflSZw5hLZ1776TXMj7DlBxVdT6gPbwH0NdksHtz0XWwzvEjcGitqtlpt5qfkK8riMHpAOVGVx1L++Ne6Vc4/3mAu/AjBIv1OernARSlvD9Q4Xl+6IDM0ganc/Vt3+wCkzqNFxGtrzsCF56Jx3moDd40qs4yr0Ef74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRYgKwjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRYgKwjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772673293;
	bh=cCw7YvrFdf359+fJHI7EX2C1/iBTJ+ZM/Fgd9MNplV4=;
	h=To:Subject:From:Date:From;
	b=VRYgKwjGuMOulpW7ddGqqLE20dCA7jwvVPIYeAKXlQvwkKiREpEcXEvT5WPCQFC3u
	 L87V/tSxr37x/ONxATYxN+fpXwYWhTFjFrI51jHPRBVE0DyOiwdp3HnpSqDdPh0qB5
	 UCt3thADCskdsJjCw2sNQ64EHOIMRCmrP/ydoa3OLr9IIxHh5qd9pJxV5GYFr6TcLZ
	 6/aMIZp9bSkDMHXsDffLxssWffTrevPcwPmj1vI3PEdss31Gg5bHNWOXBgZP3PnMw1
	 PxnETySc5NsUWRwYTg18tPq4+CfC0fozGuZJbcVqa6p2A5WHF6zOYZjrSxtF4yfWxt
	 Ck2zFghDUadTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D0EFCE57
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267329358.13915.18208943137246195829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66cf0c2dd24b929a52aeca04bc807a40442f9279c3d83e0786fae43227100259
Date: Thu, 05 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772673293
