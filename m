Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96ADC5C98
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0765C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685778485;
	bh=a/3cbbi2hJH60WFNxP/cgOBcmb66eNiRdw48LmkVxGA=;
	h=To:Subject:From:Date:From;
	b=Ow2cjWvMQRP2jHHMwQ69l9CBwT4CtR6WBVBQJ6AnBrHaqJWJ2dzH+VtyueaDahNfr
	 +YMWJiks3CJT8dK77gDjW7AR9KPN6tFohYEAsUV4h/oBfcSW3hBm45mqUNShAZhIge
	 Rix4qIT0gJKhGQhRzZwyPXYM7Knzf9vRpMpV3mlUIVo2ANlvAcFI84m/zGIDiCv11g
	 PyRziQOSRVO15cxVTRWDGHii3a/rFsPebrjWdpNdcH2IWivKDedv9SM4RDO6VPLRkn
	 q6ibkBEZf+1GAl8iVWCua/nvAUA127Gpjdn98jGkQgo6KWsEtWysKebp4gHNtbY+2j
	 DGbfQtoqz3+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0399C7EE24
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168577848575.2793.12466609233040073560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b592cc118f855df06d062dcd0e5394d24008ffcf4483bc7d3efe832a9c6109a
Date: Sat, 03 Jun 2023 07:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685778485
