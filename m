Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F047C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B639C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662619253;
	bh=rmqpVwwE9txsTLTlOV8dNdVZDt9l3/9LmTPZenUrY7c=;
	h=To:Subject:From:Date:From;
	b=UuTVqLkJJcqPZvuvk34rW82w1a6Ges3X4HmveNxcmjCtcoey7TJCKo90RS2riCzTN
	 74EWOqdLGnVxyV7oBRwA1JzES0tm+rxaFI9z679rAdVwXe8WKe7g+kGmN/lNCRS/F9
	 Inwe7cm7cgqoWpfL48McPg/PZIevmwdR9ybY6ulR1TUkvLlKxOISr8wcPHJWVwMuAs
	 Lwfhi8T8Ff7elq2c7KhZklpmpvcyh7HK9vC0DcJ0NkvOd9kyiKqplKh9O0FmSQhhEL
	 nNTdHZ5f3vlEK1OIt/uVX2RC0t0VFwxQgVyFbxsF9MH+4NHggMCKrVMKPsyE95nmk4
	 sv9tXKmo/ffxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505ACC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166261925332.10935.7811676784427315845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3824a96e56063cc88681c2ce56db9f6777082d24f745786c68b72599cf3d77b
Date: Thu, 08 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662619253
