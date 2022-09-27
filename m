Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07BB7E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF47C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664251253;
	bh=RB26WNrWoOnOsU5B3Zf1K1mXLpjqEQxHbvwk5RBiDFM=;
	h=To:Subject:From:Date:From;
	b=sAJuzg/jDoWRIpWbbY4i0q7KOoFIbsib6EPW9YVOh056QWnHwVSLWyfuCyAjrO/Gc
	 H+L36mGDIdnGDU3Fhf2v5ZEvStJuG7awp1wBDWim96dYPf4qu5zsNN3sWe37fzHZmH
	 ZatlWGOefwBXlT2regbwiQ2Uf5ytcxCy4ZXM5NYbmw6fqxtSJSvdwGvAF1I/twO0xV
	 PeTTfzuq4szMyysrs5yOKkjXiXm0/RN8yWWuloWcVk1Cwh1AnM20eytBHkVksTXMr1
	 sFkvRLaOT5KG5Ftkq1EHmyL2bIqcl0GwwqCLN077ysjj9+eJQtYNK3F/kCX1sHYiiL
	 D/5TdckLCzLXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5463AC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425125333.18499.5611473683168834313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfea7c333547edcf479caccf214f0cf8f78cfc44a9c2980d444ef8954f2ac7e
Date: Tue, 27 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664251253
