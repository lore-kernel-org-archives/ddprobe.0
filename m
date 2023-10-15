Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F95E11706
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 20:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sjui5unq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5315C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697400428;
	bh=E4g0nSACYxnqHwcb36XtTTBzyyF01trTkHQ5hKMPKjs=;
	h=To:Subject:From:Date:From;
	b=Sjui5unq15OaQmExin9P7ykna0riHo+N1H/YqEZLjLUb7IvQWBdnuL73GGiI7Bh/4
	 W0om74C30qpz3RHtD3EF1Bn6xg3zhABGztPaRrKxz1oGgxctffPr2pvFDsNe/Z4YoJ
	 thg8k/7QGlb1jD0B05gJ/HmMeqtEjsbzCCuwtpeZDJQH7IiuTMC2v0mWp7E7QFirRp
	 aLwbgmY4Tvx+u+PFa3CFMirhzK6Niy8WMJXyHjJDvVGIK9JZb8fvOL45Gl5PdIYw5c
	 wdNPYanrEZKG1Vlg4UsHPscPQuQMshYUiQ+q00h+W2T5wPd/GawKIvH3Y8deCXf80U
	 ihT42LO25+hAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5FCDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169740042869.13775.8451108749161026382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c0aaa651476d4f5b6ab07416b29f1d2ef582e4c36be06b4b09572f0d85cacb
Date: Sun, 15 Oct 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697400428
