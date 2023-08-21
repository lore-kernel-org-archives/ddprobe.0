Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CA953B4
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 12:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4381C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692621248;
	bh=NBVSAhjI5xhTTZtvVGu/ld1Zjvj8GQnJB6q2KLRyzAg=;
	h=To:Subject:From:Date:From;
	b=AzEhAWxp9GkxgOFeN5z4PvWzuOlT84a1VtPqrX6J5zUakAIRkuF/740ct84FNw1R4
	 G29JgGstx2sMIXoXnyWvK75ALPWIYlmWQt8kGNTh9vG8ta0BKjeJjvWryQs2X52gJd
	 a97OIGltyW3+LpNsxQOzNuAWzKLOM47pexcTj2/BoHAkG+qIDSYFxOoWYlzZAzNdkW
	 FMxKTW16BSQN0JJfRftpLj0tlfGPUyv0mPq3y8b6z2mb24+E2D9fw7BvehsYtP4Crz
	 zoVyDLSU6471MB4egp2PQUdaCT77QRz/J6tbeU2RovGi8ug9dJh047dUgMrOw15Id+
	 HCbhPgRs3pbyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D3EEE49AA
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 12:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169262124873.17745.1649020112797365011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef682bcf276142af5b5ab575bce7c74a5b95e0553dff17359249a5696b3918c
Date: Mon, 21 Aug 2023 12:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692621248
