Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB50FA48
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HG1ggp9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8037EC433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705185496;
	bh=WHj2hta8L69/vJq/Mu3IxEmu7TAkaIU4OHxNtL4pDE8=;
	h=To:Subject:From:Date:From;
	b=HG1ggp9RtbFKuCqfyjsh2Zt2Ne1h8Uw28BRRTBelmiAGDmdlgc0p5Vz8Z8X53N2kg
	 UOwlZgGETjitnt7pLT4UOn17AkNpBl30sHdXdjLBwXXJxC+bOo/6Cij8nRZ8cYtMMW
	 S8o7PrBM+mfq43VwyUys8cjQg8f/QlfygC9tlgxZ82dGe1rZ0Dsy97tyHkYYGQ21YV
	 41cZ27gycAmbGRqfdd7i0QYhQiJXlQOXdV27HWK1TIZo8iGr+S2w8n/r29w9vbFkZf
	 DxzryFN4QUfgsqGMZQ6KO3C6Way0+bciw5pNda0+ygCdcVxOl/YV0elNwa+SubvAJD
	 tp2F/KO7HvzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A19C4706C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170518549638.27853.155286169398427576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e033e9224814c024d5a67e9f0d10b46dd12bedb500d4a348affa59ee03a0d3
Date: Sat, 13 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705185496
