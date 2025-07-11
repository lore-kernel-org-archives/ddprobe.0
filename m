Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4001F150B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752220795; cv=none; b=qmlmT08Rv/jjoCuuFRuJLExIFZjdVc13uOuDIZfWkZrodTPXFwTn9E2UVs3H2RUJLyZZOCnyLCZDe0XRbM20GJAwAzFaVgtKMweXzx5SrnaeEBA/r6+nAMZHZ4pkgZ6daSIiPf3lxpidvPU44edBvk+I4Tz68NCs4pM0IrNf4pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752220795; c=relaxed/simple;
	bh=DTQU1jftYK7KIVGrxTSI8iyVAF538yWMvG4A59E4zfQ=;
	h=To:Subject:From:Message-Id:Date; b=Ci8hqKGkJ0l1tSnL9Aukxa9h9/bY+NrGV1kDWKYoHXTTBGccgVFVqlkxyd6EVT83jZlgC6bykYM+gkXDpLt9+JGz7GD78GCa/XVJqGOu3nvWCufptHEiqK39QvMpPb/TsP/ct9NXwTRZbOB/xzb4frfMGhxXQgfZheu6c/hDf+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWdK4wUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWdK4wUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCBCC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752220793;
	bh=DTQU1jftYK7KIVGrxTSI8iyVAF538yWMvG4A59E4zfQ=;
	h=To:Subject:From:Date:From;
	b=VWdK4wUANtmPIry4hUY95M9I01ma3lFLLHHiBL0+J+ELgKgHFNbqTqThAD089h3E4
	 vwKKbRpEj/j8nZ3vW5XaqV+h9x1t80oHGF+ED2kJ303AWRNfbI6T+CHzTDLCQ+2IE3
	 DF6UZ2b/yibla51ikj7U15jR+/EZHx7+I1wqOHwtBRgCi61JBzmxSfVKWXVMwTogjD
	 lHxRg2ezsN8510ER7N/ykUiy99jCJqyFY7X/d4ReGZIVHrsZrM2rAJvZeFHZ7zMQ1w
	 TK9hI+/AUA2IN+30bkTcaDiaygj/MDk+xbOuAWRX0a2bKBj03ZPdJVbDDzDCxMWoOn
	 WgjnBdMwSRkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B4C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222079357.31424.16512548116749559042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94251be176a55eb555cd69cdaed56c452d5704ddf4446cbb44a615d38ffcef23
Date: Fri, 11 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752220793
