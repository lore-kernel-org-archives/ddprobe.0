Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A8F7C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC77EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682298726;
	bh=j/2t/Qd+C1WB2XriO0I+oAuzAq6jHoYa13LT5ikk64o=;
	h=To:Subject:From:Date:From;
	b=tJM5MDKOGcgf9xrsG5yTP3kN4thkALw2YAvLTnM4N+UrsBpm6UePSVZJTW8U4Y0G8
	 YIqBUmJR1KICAk8uVmJUbCAGXdd2okPppT7gcV6nSFIaoibCiROwYD65eM2EmAm9Vc
	 hURHr6sXQ1q9F9Nk64qONDSVj+dC1irKSstNaBin9wl8T4xYn5S2HaFaRLQ0xG91L3
	 wP3UWLnF7vLFEfBenHeTJoqBCL06KabKfZu0v6vLUfeVdcLsVcqMEaheQosCVaYhkt
	 Skgc8C2BsPiv7BQx3loeDoCzmUNJasQ7GLVnJkW6We3hULr1gWFlxUhabl+oIEYkmE
	 W0xKtj7ylSuHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C870CC6FD18
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168229872576.22641.2682229906947218189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb682903802257ae2622a18578ba90b5ce5f28eb397c4445a2ecc9155b8f6f9
Date: Mon, 24 Apr 2023 01:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682298725
