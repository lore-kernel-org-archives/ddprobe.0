Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C237310F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706C4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666002053;
	bh=rqM5phu1OB8MG6VPU4Xnapgsd8fucM+01usMCMb0zZY=;
	h=To:Subject:From:Date:From;
	b=Mk54hCX3RxlVFlB75t3yccHOYHUOqXVmCrL+cCfJeRSPeVYDrf/QRh3I/TR7v16iv
	 S4E6iLdxDzdfiECSnyuVYKdbS5ZHdPYH9ShTAn+Iz10v2jTpDOQqWj8qFKqaVHiAIO
	 W6Do4HbOugyotpNqjXDndm5tjiX6H+lLof+yuAyq6rqB4xWdgcNkhqHYCjZBMCQbmu
	 UWKczfxrZN3vji96k26WiMXY9Lqgx3x/G60vlRg28dGnK6Wh+RR48CWnpG5x98+3p/
	 USAGFvOB/k3Q6nzTphr3Q/sizwyL8E67DqoG2hrj9Q5QETEoCPN8ptpxSAkTL29xf6
	 +37TSuZSnt/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580D9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600205335.16611.16926275863298251000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e6a04d01ea8b7cf19e9c4e662736afdd7367ee4656c4b276f1522d6a1f4ee9
Date: Mon, 17 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666002053
