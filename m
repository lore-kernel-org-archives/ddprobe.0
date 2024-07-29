Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27659163
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722211554; cv=none; b=iJeuZpBEJI4aTNplQMoJkcHIjhPyXLHbOJnQg9I8GAAQvVlF9AX+Xt18kJ4HLpJldIuxLfb1L8X2eJVRYa+tbdMaeNUG7+gFR0/4zcWRGWRYsOdFKAPbKcD3scaQkHL+EYXXhwbOKDLVG6BW+zE6bzIIns5/K9CHVds0llhLqFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722211554; c=relaxed/simple;
	bh=NUxEC9YTkZfZ5BQkYzCmF6XPG665IKzuDd5XJa41qlM=;
	h=To:Subject:From:Message-Id:Date; b=gYIkj+gwsSc/Vv4UwrPVMcJSpjuDqf3rJwPD7H26yNtAHMeuHgorZjCGe4bfQJkOOZrJcmG6cSVeEwf7MQPaLlRp11cK+SakufDE2ZkQ28Ls3hHrnseIXT1tGxPVcw8Pji3epmHRxQ828vDRgrl1g2cNGIAn9PZMPJ3mEmvBEDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0KfnqN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0KfnqN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B017FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722211553;
	bh=NUxEC9YTkZfZ5BQkYzCmF6XPG665IKzuDd5XJa41qlM=;
	h=To:Subject:From:Date:From;
	b=J0KfnqN6WoHH7OGNvTd478ZUxlUlI9G+T9CBU35J2AqGVUqkDtB1Y6gVK1SUldWIs
	 UzS8kSxtlC4OmWqzZhWAEJzlRSi5z2vTZbEXJaK8qKKqzbEgEByll9CiM4SjCUlnyz
	 +7Wf/Jyt3cnM60xWX0p7mZSNUoK8KTNzhHbJCJPyvbfa3d0DOaepL6/FJkyohnPFBf
	 /4UuARTa0kZFVGHbAS1pwQjD5emKo10g1hJnfXbM0aRwP6mehuCTkGlhJMuWr3w9GQ
	 oH4zN2jNiGdLoGEBQufoaIcvFofXo1ODx+64EjWjH1ed2mk3d0Gn3R7U9nHtMQVskV
	 CAcSx7OLgN1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4F9C3DA64
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172221155358.8184.11382002764066872352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42468bc42855669af541c19e366df242e79cf09823858f6c30574f97f3f976f
Date: Mon, 29 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722211553
