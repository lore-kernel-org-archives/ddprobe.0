Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47551A34
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 10:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFED2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677494165;
	bh=VR907tt6+vDlZVoG1vgUkSZyCkewdFAumTvxCo+mbeY=;
	h=To:Subject:From:Date:From;
	b=o4YqLAcyn8P8v15eJGFn+QMLmzLJgdiMJQZencIm0wLg3OcVV43MaW62lGUX7yPyW
	 AAXuaZCJHTeIbQlTbE0cB2j4EQctlbMHZSoLzigFrw7GJinaxuwNHz1pkIFIXOmnyp
	 OhNul6u67/51xbBtcJC0vSKPytFWfpQ8qLnGFUH5BR8UYTBP4FSBvtuXibuYZdMyu/
	 G1pFaMarsmcVafiKbhG8XXPIrQLii71BAF+B0p1CuHduWPgjQ/NWSMQpUDUWRnKkIf
	 URuV3fHrN+uEt+X5QTkQ4e5AZOCx0DnKgVA93Nv9RjPESZV/fhQl87t5IUFpNw2NC6
	 N04WMGz0JoTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCE8C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 10:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167749416575.3528.15801609943591148019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b829e98810cb335a6ce0a0be5df95f891ccd2bb9a498360ece47720db91c2dd8
Date: Mon, 27 Feb 2023 10:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677494165
