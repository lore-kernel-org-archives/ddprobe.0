Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0392C199A0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUSBZxvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788BDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705348696;
	bh=R0tSwIHwQU95rh6na8LVyNlgAUHzOCBtv3qCZdWVX84=;
	h=To:Subject:From:Date:From;
	b=AUSBZxvDzkJ+MHq6iRs1zzzLMJFzjxqiarmu8suFCQ2qvtA3W9/e2yWHDybVTRGhy
	 sONs7WjUkD26dPQMqWCJr98mmlL1saVYDOE+qVXL3mS16K0JCszWU14FR30suDb4BJ
	 ffy1lAaCofkqKdsnhEciJqlAZRRxgXxAfxFCEjnpIuVlyvl+3vnbhnOnqTmTGYmM0U
	 JPlAl07A2tHjL39oRoKUGIJkSXL0o5++AzwHH+siefQdCIdXx6H1BEb6I12DheZ8gC
	 2GOfVHpPutDbNKrvmtzHEcflJdbG4sEjEzzHLpNKL2ORgvxgxV9m+Z3W0podxqCaWw
	 +acE12rjUyqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFB6C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170534869637.9089.14135190908287277343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2909ea8ac573cef6b58cf2117419d648dd074a64219d13f163ec3acbf956c44
Date: Mon, 15 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705348696
