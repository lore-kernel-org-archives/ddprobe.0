Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE18E15A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D8CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671677487;
	bh=Cl17evl4FAXxhtojgcIFilv9ZnLMJmid+t2cKR45l0o=;
	h=To:Subject:From:Date:From;
	b=RoOH9Z9yUwWDQjE/lQZp+ekP7oQZ7p6B8dYAdTON7dgAlNf/dAcSXoVFWoQs5vvsX
	 vz3IQOCKeFpIXhea/F+Eeq8vxpdxNq4/WENoRpwUHPIGntkoVI+yOjJ1dOdvxLytNG
	 sTnohx19eMFQ/bHjV856LQax2Gva+NYOKTpBrOcivO4QAb5jDbeiaTjlHUxAkZr87+
	 aY1PtpPlmgeu2E5wAV0EnnO0FcPrXyTmwW9fc+yN9rIEEvKPT6bi5UwLJ5+0ZICfrd
	 shT0iVYcdbLP4ovWF5yCaMfu4zzdeNCh2+UfgHBaPwYkWl4sdy44ZbfTtRh0lNvoVA
	 bojCtRxX8xjJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C74C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167748742.16321.7910490096235052778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292951ac548bfa3d0025e785eacca6321876119827ff0c756df05b61f715996e
Date: Thu, 22 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671677487
