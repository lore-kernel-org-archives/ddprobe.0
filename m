Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C40C2E4
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80CDC433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683320885;
	bh=SjACH5bcubu/YjdMAsysHywoc6a62J8Fuh6UG11Litg=;
	h=To:Subject:From:Date:From;
	b=MYAr/n+55ETrGRXCKAi2vP/PylZ897sRlz6BFzzT8qr0Lp4uA67bwSENAkq9dSNDV
	 6e6SdBGRmJ2BxrUA+6lLtQpIRZe/xrbJT0JdKxG6G5GCNLtcw7nVNEuID8V1I1Gy+g
	 QyK0ZHeW6A/uVNfI7Imj1jaV/tIEdMPAI34qZbmGYxBnlc+hQAXpDCF7VKHFoBlHzf
	 reTVzFW0mW5IuFd6tbyzZ/jef9DK/clpvf0JNM1qQ0M0tRy+7uxQML/qI4xQsvL2Je
	 WuvgPgD6wJcVrip1JFWQuC9q9l87pls+jMqHruy3+T1ccc+32nBdAL4uY8qlS1NO9S
	 TWOG9YL9lIMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEDFC77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168332088576.30554.16845510654086742289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f89aceaf07bc3a22614b877b124851c708e67a5bbccc3a8145371c35e2a4171
Date: Fri, 05 May 2023 21:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683320885
