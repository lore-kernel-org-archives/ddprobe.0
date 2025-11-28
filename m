Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418D52FCC04
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764325374; cv=none; b=QyUJo2H2rii+07/7r/q/vnQCO4y3GkTK01Uczkd0nmbSqgay+RnRcu+7s7katrALlRJ+r0WFMYJaJLrV+dCOWPcLWhfp2EGt7hHHm1NBhV/a2I4NhNkTQGzgfNfO4rjt3jFzGGzyRzQlRW/ZuGp/13CE1hXo7KOP8koTQG3iaQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764325374; c=relaxed/simple;
	bh=5j/HmD1A4Ri4U+merj70gSJMTJHx7zDRH3j7t7GK9N4=;
	h=To:Subject:From:Message-Id:Date; b=FNncf0Huj/N4C3kj3wHL56d63wStdvNBJzGbm2kV1XtFxiTDxxMVPMPYdBAJWZn6XX85lcteExGnOJoBvFEpUJA92+YkO2PsU/705+0CaDFfbfOMflJHabUCUUGYnebPOpIQmtzE9jHf7ugVoszupaK2m52gI3Ijf0CSoGst0nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6iZrln4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6iZrln4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764325373;
	bh=5j/HmD1A4Ri4U+merj70gSJMTJHx7zDRH3j7t7GK9N4=;
	h=To:Subject:From:Date:From;
	b=c6iZrln4OlWIqFPrTSfjcA0+1LcRgSqBL5WRerO+trAvtpudcI31gpMMkSoqTlGw2
	 vZq+uovnJlJ1jTZk9UZ1tQsT1jy9Rx9MTOMApUhaJwfEOy4yrXf8oJMtVsz3rdSjdD
	 SgWoykJQ4q7qQRnmxGvm5WaQL+K9GkeQn8t6di5+rNMCnJ8Acsm5kxDM4rOni7T9bg
	 MTs5P3WB+yhc4Wfs1JiF2uVIqa1yd34438HuQlrRNrvnRyKgU60Wt8fRaHyg+3exUc
	 M6x+uyxMr5KKcsbM5/uwA69dl2fMVDzJeGtlSrh7tSxFgCbi4iK19whyoWULkRem53
	 JhY4INv8TqHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C95D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432537358.26420.8436428175215538312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8681925938f86ebc411ea61be1c477de9ca3697e27c9944c3951cc23f5d056b
Date: Fri, 28 Nov 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764325373
