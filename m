Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B662F2E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3053C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674231725;
	bh=xJqiGi2mjg4EE+LCDaKRkTSgmM5TJm4dycoH4pogBaQ=;
	h=To:Subject:From:Date:From;
	b=Zhsm0zZKKyEkub1CXH1s/Nl/C3IqCHqYOkSpubtvunlZQBJynKsvWIPaV4FF5tuuG
	 9JOY5iFUqpFc/jYG3TL1XYzQSvSCTUunS2VsuTg+eVkEKcXikS9PivArzLw+B2hFDB
	 wkKbLnlm+bcMs3IU4+TK5LQyJXGjIMqGiQ+P4xVYCfMCH95c1aIBbpniuof2bWRDAT
	 j+3E2ocfmcYEekWvKv2tLQTGJqdPxIV7UhD8KMdQUp04zSR1yWwqmwdXog38hemAmX
	 iui8avFhFC3go7MdPjwcHUAIF2NtBIX+imf3BsMGBxj3bLW2bgMehtSapnN1k2/IQ4
	 Nouj86/JnU9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DD2C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423172580.13733.3742111947432807706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30021bbc55016afd8580553ea394db8b5c7352b13f76768f766a5f4a19595d10
Date: Fri, 20 Jan 2023 16:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674231725
