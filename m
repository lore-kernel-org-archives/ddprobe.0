Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354024A0C
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 10:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C0FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685443385;
	bh=405I3slCJAwdKuT6tdcKkOyH+4m+NNzV07pnX9+Bgyk=;
	h=To:Subject:From:Date:From;
	b=oDZ0eCok4t1fLw0DHh5HrO2WMsb7qIviLj6U28je4NI9hMX2CZFtdp1L1RZc6IlTe
	 F2Tkt+izW8Mr9Sognb+faLsFMytFDHDXS4Aes5ac0FPWkz0GL4nsJ908dKwbcDmSKz
	 EdRbvDKn7pEgjYu6E4j9vYKlXSXxGawgJA0RL8CQtRfgW0ZxJxy8HAnnIGWppRVLsg
	 luVR8zPTadf6n9dneMFzTSryvCNZvBfIFgAx3u65f6Za/w5QSrHx3yOPd5nHcrL5PM
	 T4BLcAjG6XXcYb7A8Q2Ap/7LtUJ5POqued5mzwy95nvSdXjg+G876IsYX/F9w8jn5n
	 GNeuvuxOcjDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4479C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 10:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168544338573.8357.11338571078772903860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976108ddd89cef3b6255980336015d32267fc1cf6bbd75a4cd9f97a165ee842d
Date: Tue, 30 May 2023 10:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685443385
