Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212101A70E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHKM5zEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD22C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697807896;
	bh=XPTFgJRGpuRH1c310ewFbykgN42vKE5iDUY6X3UU+oA=;
	h=To:Subject:From:Date:From;
	b=CHKM5zEmKCPXek0tPfZ3lV/dydKr2vDmNhQhKHNZcBRcGhLwLTpnbOi0EpAKCAeGV
	 2AbC+WhbqXbmfW3R38U++k8sPtd0VIioRrzEcHXu2pMgsoU8YW2Z3YnBD/eH0PuxF5
	 5e5eAGK+c8odMPTldtOE9j0tjc3qbWqpR7P7mF2k49YDTQzbpKuRcITyL1rTlNipOP
	 XpxJLBNXPrkMhM0yrDzTG8n9yhSw7NCKgSoiXkAZF1LM6t18AUu27VVMsW/zzM+Mx6
	 B9jH5tLCoRrtCScEDG0MFusIJZ366p5szTcM/W4OaXzGYWZp5U41bDLO/iP17FCyV9
	 0STmtuxciDDAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F751CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169780789650.25776.6162417366799293003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed81439478ca886abf6d10139e440f2ae1e1ff428c6d2c61ab0ff004448a3107
Date: Fri, 20 Oct 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697807896
