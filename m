Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0187B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 05:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8A8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 05:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682400305;
	bh=MwZ0MyTm8W87dSAkvOJtP4Tm/nP2XS/F9WJ+6CUeFQk=;
	h=To:Subject:From:Date:From;
	b=eufEDZEalxOn2TTiphWzxwtkGG5TADsNPFgtNLe5qLkrTarQdQNYmZaMkqQ3XYrVj
	 EpfT9Uf5l1uDLaMNhk4kqJT0mQCKGSEmB6nuApHnyIRVhT2+GHRwT/Hq8BzJD8aJHO
	 tZsPYhjwm5VW/t+tpiKTMmMfQiK17+wV42vOHEUlsP49c9Iz3Ab8NC+hZjVoByKWGf
	 DiviYkjvXfho+FM8iEDJcpD4RecQfM7EgSgTrn/xjFRraFU7IBOXDkbwJgPyLBIo1k
	 BRegLSG2zQ4/Y+VPY+Zknquo87Eeif+ApngDI+UucDu12XMZ3KpNzZ6Mrd8us3pkP+
	 Bx+nlVsMYqEWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C162CC77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 05:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168240030577.10947.13283606354523523019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5492ccbf8c275a53d3d4310bd6f916a334fcf153b5fb6e7c139d0adee6b660
Date: Tue, 25 Apr 2023 05:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682400305
