Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D15847B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 17:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 001CEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 17:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682703306;
	bh=0G6OVIf/Zi/JRrE+Pgnruf+pze8Rkkgh5shbxghSdPw=;
	h=To:Subject:From:Date:From;
	b=h2cp6NgAtCm6B1szEtlpLN0m53gu0IcV9Z1CXoH1+U4JvP5+ETLXCsQC357rzVATv
	 hZE/a0Sf57hkvPa2PHhHoEQPR1ToLogkADcwGLeWRSW/QDlfJT3RR04ek3WV4O21Th
	 vluGeypuWLXji4xAa/dL/N6vBa0OaY9x/A5rRjeX4Hj0M7cb7+E7WqbxBrZStpmHax
	 GNxtUKNH15BMkgt88tiKo5tky50RxtidcuX6txWOELZ7p5bLyJR9A6zkD7qewKwTld
	 ftcPbpEvfrAjUDt1GevyPQyX78A2bPQwpRxeQi6xhWCN2kwv/hOJTcfr5rNa1e3gD+
	 lKOTwmkIwlm9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3C8BC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 17:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168270330585.5823.9183251893901235750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5aad7b07b2df3a7909d9d55aabab5188de6bfcf60bd2304e0f2d622a83fa2a
Date: Fri, 28 Apr 2023 17:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682703305
