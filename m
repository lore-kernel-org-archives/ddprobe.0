Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526CAD2E8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 14:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9C0C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 14:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690207928;
	bh=VMlZwLb3GyrHcLPgIF5EBsmMDFAQtIgKamWbtqdvzwQ=;
	h=To:Subject:From:Date:From;
	b=tSG6cDbSHqbHiv3+5JDwYwQ0LGQQXCy0bKdbazbU05b1haPxJTJMb5SYZtKYFSwsh
	 spLFEzKM8svHUGHOTf+ahlMU7kcFzwZSOGSmdR2y84JvPqo8P0BGxZaRNRCkRjlo2M
	 SL40q8NssAfTjT8NBM3kr0NkqnZUr3BrNJKU29oMKEi+un1NYrXJ8TeVsq9nmV0XMf
	 Re6eNUIqNsQEvQWKGH4sDZMLf/oGDkaT5WKQ9/E7YAKuIDNsv4/xY+gdOElbWPBF2r
	 uBIjZvVHtEmCGFzpQ4lhrGF+b0iKBzEPbyJlplkgTaFmTHu48oyZw/eer/gW8SGlmb
	 OirzX/5314KPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D78C001B0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 14:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169020792867.10899.12668098641633442186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932dadd54d39d62855d632c578d88c4a0bcb089dde3c78c974f3802cbe97283c
Date: Mon, 24 Jul 2023 14:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690207928
