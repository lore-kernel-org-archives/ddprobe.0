Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9AD267B89
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771634093; cv=none; b=RRiu9SJ8jPYRIUSLi7vd5H+E0aKGs7NtssoCkD+rOGV1Z9JZNNm4tYssKAR3XGHsPYEY62RUoUv5SiDtcxe66bFOq7vUiA1nIf5wBng7/7+u2WCkFZcUZyL81wh2JVz0yKce4zI5sgaqMUmIOwLk6hmTJYOxINuDf1z78UoJdbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771634093; c=relaxed/simple;
	bh=/TR+K0Foe1k55S4YVjkFGqH6lhaNsq8KSswLigRgNSY=;
	h=To:Subject:From:Message-Id:Date; b=Hl/wcn0LjZeoSwTCspdRJKeDtFfmkQOooDFxj9BFYqdmpdusZwQi16B8D2E/1Z8Sk4dytaR2x5g57jTfuOux81IDJqkP8xp1WqJqjiJbMEsgYTlQJ2XonLwxTtfGLB8Xn0EeADdm3DtmJgPhcEWGUQ5o11djuainmTZtwVUhuoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqV4EFbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqV4EFbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB16C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771634093;
	bh=/TR+K0Foe1k55S4YVjkFGqH6lhaNsq8KSswLigRgNSY=;
	h=To:Subject:From:Date:From;
	b=SqV4EFbMGC171J0p2h9TdRParGRqM2WVJ8qd3IBP6wHVwd4u0OMsmLjrRcHfdUKPY
	 QZOcNtexHMH1iT0vVvhYOEjjbXphAqxXVxIidkp6D7gR4ahzAgfkoJ5q19B631XrZ8
	 o5VR1gg75+Ss5vEuHt4saPcvHyipIUeXC3sGCpsAopWwTpmYsdbuOOsOO4j0qtgIdC
	 eNUMRfcxhKEE02wwwSSGuOP1k1rzocqDQEhV+s3EiZO3uEH++YGaN6wJsRzFwGVHsy
	 VX2ep8ChXADTXN/eadD8ET/Wf/87YNo+CaibAwOpfj10gdmvVFSrWzu4E9wVN9YcmN
	 l9FJ3iWxprk6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D43C5DF68
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163409358.26228.12120431861109340937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdd377d8e9e04d319a6cd8a940b71e0daa58dee46f010d73fc1420650007282
Date: Sat, 21 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771634093
