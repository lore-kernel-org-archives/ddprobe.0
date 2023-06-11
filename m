Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C991851
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07230C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686472326;
	bh=xok02UV0aqt1uXVeUFdDuQCUitrK6gQJUVwpGDIn0Nc=;
	h=To:Subject:From:Date:From;
	b=BLVNTOFC/H1GqHHSl/r7cdkU7ig6fDCzvuqINYxs+OWNpJCSqUuzXYJz5VwDHeXHW
	 q2T0V/yRHlYsGA6kO810Uzro5BZSww5XFqq8ApPWeQ4kUshaVzgQE+30WUt9gnjsb8
	 pVA40iLkcCXbEs2t5nkSw00NWTprYnUJJEki7y26hZeVjK0gkPHDseGPeSUZuavjMA
	 +OGeMMPN1fvr5aaI8a0CKaML/LVn3bKAIEm8hssATpDnMYCGNAQO+LxEqUy07Lp13j
	 kH03BWotbXKFQ8NAi8fbnDtd8gxgi9k+toMrkLsYOFYZeCitVOhQt2hoPZJHvR7/qc
	 6DDkqCAYeLL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAE3DC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168647232577.20415.9543024885839019190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57056cd82d00d74c82bd3bd4b3bebb408fada7e08d3104cf6fe6a9a76a5e5db5
Date: Sun, 11 Jun 2023 08:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686472325
