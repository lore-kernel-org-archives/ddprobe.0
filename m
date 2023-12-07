Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB42405DD
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ/RNkEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8BDC433C9
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701956296;
	bh=8rShNzl40xQlax6mTMS1tfK+FszAl9/U8f30dXLriig=;
	h=To:Subject:From:Date:From;
	b=KQ/RNkEcmPrXINXaU7hm3JV0kgh9ugxBzUX5NOPem61mutBMSRI44OWxicMX7cUaa
	 bNnh2iwbqZtfgcOXEPsoaMu/hcmc6DGQGfGJHYInTzTMtlUPmHFalGKU4P8e74QxsY
	 K7X2GtAzJioE//CrWeUwpgoPuF5WkxAHNJwUHiOfYAqFu5G6GMqF4HcEXWKtsm53pF
	 CQk8AZvj4rIheKTb0MDv807opNtQaZtQXAe/fJsfUdbfQefxzel2w5lvviEPOFVUFj
	 YDCLLGiu1gmNsGhzZBj0ktaMRm1fvs5PiiV+YEeaeMzBj1XpD+j0zJYZZ90u5Sdszu
	 SBb85j8q1ax0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624DDC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170195629639.23058.16607633232595443199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c355bb3da1ec5d42f9317ed8b0148cb29f7c28cbfc6c24ca2350d354e22324f0
Date: Thu, 07 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701956296
