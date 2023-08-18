Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBDF17AC1
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 14:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D1FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692367448;
	bh=/F7LFlXnodpDkbyxDMXh77FaH+sDlmBIy0siSUx5nAQ=;
	h=To:Subject:From:Date:From;
	b=CqzDbTYLz4FpJAcRobBSrmYjHL4IFhEN8AbmpZeTghL0LA202cDxiqiw3lCuT0eYI
	 TMStdcbEqK330s43sSKixakBeRLVvycKyCCjWeowLA88gfff+FBRf7kDs3UoMBOJrS
	 YfHhcHr9vhtkywITjEnerr3U6VPF5Z9TpdATW9efL2eQ/jVyj8GxG2rsXWR7HSHM04
	 HdYGWPoAt4IfXwfoldhDpgCqEODE4T0mtwTHPD3qnPV4pLgHHusrEdPHPUsd/0cwGs
	 vJdVQx7q2C7JHkdJsbkJkF2Df6wGNtRzPNdRyULpfhfgGa1An0KyezWG8AbgcKva4U
	 Tit/cLNrU/RoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4560C7113C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 14:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169236744872.23432.9137763304298741586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ce014fd5d059ff2eb66bf4b2181cf3665d102bffb1184d3dcc9641ac8a97d3
Date: Fri, 18 Aug 2023 14:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692367448
