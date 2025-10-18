Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAD41D618C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760804393; cv=none; b=BL7TPxEvM5sOBnIp1FhRx8lq+axQUtkYFfs73ksVw2fU/ieM2PPBUElsnHB/t3eOpfqqGEUMuyqaF7sBNdBB/TgEaFrhutljD9dmqF5wDzQzg1NocGquLw+r6lHzOOgS3deKX6qOhMiQ0SXPFt8Yo3/QDw2jIkiUWo4aQmRupdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760804393; c=relaxed/simple;
	bh=qeeqbedj34mdmOOBcb/PNXLV58NsnVIfMbBsAiH6Mhw=;
	h=To:Subject:From:Message-Id:Date; b=Z9JAclSphSWdvKqOEqYTFawjCHU12qEY6sBV31bqzXAv6h6FVgdVZ0TqSUtctvRNYdqLjqQ+P7q33YL7ENlRaEQr8TKoMBOic12EsBQ08v/MvJ8D9pYVCec8g0xmgSapaULfG9uztQecXiXrFYEL0+hQbYris1nslWlvWlkA5d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFQKxdob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFQKxdob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E54C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760804393;
	bh=qeeqbedj34mdmOOBcb/PNXLV58NsnVIfMbBsAiH6Mhw=;
	h=To:Subject:From:Date:From;
	b=JFQKxdobBvnmnsDD5EuGHUC9YOTm8/pd3CZKg154l2HyQp2SrzCDPE8LWvcRSBfev
	 Z427r8ij8wwa8kVTvGj/XIlLv2H0ss0yobfgSyyQlqdnJUfiU3veAwAFdDZkq5B1ue
	 akruX2h00zxavQxgSZUa9D2Yp62Gr/ZPc3YNR+CMLKpVpLtoqyOPVYZ1gCghcWA3QG
	 /7+MaV/MzxqubwabG+hLk0MH07yBGagvrCn66x679LrxLB/NjqweOnE2N9RsUNZqKp
	 nSlRKQOc+1uG+DHLYDAIFQMZnauv45B5RhE+3GmEiLCKIvxHNyLVibQwqfJq/8YSGf
	 mJDX6LrQv6kbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91756CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080439358.8728.4789446747364507815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a8a9f5e1b6e75fdef3294a0638df6523a174f58eb9210adc78f12909a4f346
Date: Sat, 18 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760804393
