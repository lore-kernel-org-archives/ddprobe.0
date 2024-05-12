Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E65219470
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715517143; cv=none; b=EGB1M7bO/ogoDgxWwgibAnPEG4XXxWJWzZu4qK7Rx0HyZl9kH/sMhjxqDbL29n1jkggofE1bZf9PEFpW9N1Mhp06GwLBoEXmtreZLJdPS48+ojbDTdOlPK1RUb/G+PtVjciVFMf8SRIDz5ehRodikJ3s95YJ2Ej+M/L4gFBbesc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715517143; c=relaxed/simple;
	bh=AEZaHMZodK8/n0HHX9Yhn6e61XKh6qhYXmYpxaNGLFI=;
	h=To:Subject:From:Message-Id:Date; b=ijxg7vHs9apGFs4eCEsedk361VFJf7kMbwrjAqMpavvuC9fGc38/M6TBBXczMOrrUThqAYIDtecaqM+ctotMVwVxiA1nEnR25AxwbnF6Fl+4jf8ysrSvGr04/IqL9sMvKPEfSG4hwB1aDQpvRRtNLXUbvDoiCHii/NozSug2Gg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPAeQc87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPAeQc87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A42C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715517142;
	bh=AEZaHMZodK8/n0HHX9Yhn6e61XKh6qhYXmYpxaNGLFI=;
	h=To:Subject:From:Date:From;
	b=YPAeQc87rpLlkoHhnEa+3qcDkP9pTgjiZBSlQJVuIUQMMNSedp4rWFMf3ceYBvP2a
	 VQuhGIRLNHl1VF5JaRLG39dbx+NrmbtmGqAHwrauLTbrfYNr/kV+Shj0YfB7hFzB/T
	 64zTXC3oc5lW9OrnW58t6lSQh8WIDMdNtHcqL7/fg/Uh9TSyxYjOe67+o/lcSVISGV
	 fIN0Ufm8g9CdD8YOcWUiGngsEHRnUZ5OvSJnwlJoI5l0NuD467aOlqgkZwVVwZ0Nmj
	 ox15EM11/g4bRFJEMcVXb/bWGBMsynCHx4daJ9aOBXqKrDpKc5H7OOiCfRNBCWt5qR
	 2VYQZg4ciSAWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB898C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171551714280.29888.4762526581779938961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71663284ed65e7eb552011954746b14348147804b77f22f716b0438d1ea8634
Date: Sun, 12 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715517142
