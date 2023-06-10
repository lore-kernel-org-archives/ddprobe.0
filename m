Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792FB1E505
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 17:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02943C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686419526;
	bh=cjTzFX7nbE2z0oidLr4xqK19yZSgIU+Kllwu7q7JklI=;
	h=To:Subject:From:Date:From;
	b=C2YRh+xOFcjs102cKyrtVfFnxYuhP35B7d0kznKWmO+8XZMcrvpvCPlSOUo4Myjto
	 QFZzzHceGEGDk1Q/px408foZXTAOjchMMiTzZtUAQS1UPqUX42LtqjPBlION0TNO1a
	 q3HIYqvg8pY6N8CHq+e79/aDBAg2TdklXwMc6sePTasjukugYwC/6t3LOVxAQfpcsH
	 5lJ6tGiUR3+UUVl4GkgXGVSwbmkamW+SQaj0oGsiZkePLE0v8FtzQZwmDLF3wc1PB5
	 WNv9GoAKGVRaZ25sWUS/Fiw3vwKxNMDtX0AOqUWv72pGcuhn3JddVuEpv2kJQrFM8P
	 0yPx6FP6uYjQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DEBC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 17:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168641952578.29743.9786999131200809662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3429cea66ad0cc12b8498fe805756dcf8a40afd88fb2a1552b1b7139ea1d3cd8
Date: Sat, 10 Jun 2023 17:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686419525
