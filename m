Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B191A584
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr3PmCf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CA7C433D9
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698308296;
	bh=vByuJcyXE6UNppV3CWy94ys9nn2uWeGi8+Hd0EZzQ6o=;
	h=To:Subject:From:Date:From;
	b=Yr3PmCf0/+8zs7F5wIVvJsbHXwWBLcrd45LyfEPXjtZDygLqnLeLFOXo6q1gL3v47
	 GVWBb1l/dLNYMCTijeFvD7y8ayCJLPhhCFxQxNr52izePMDRjFfVopxfiRxoQLXGCA
	 pqt2HuEM+NbLGhyCjmDtvq2KdVI17UbZciWE7XVSsPu4EubMRmrnzCrUdqUNHNuYsR
	 rP3Ylf7YtS34LoLP5slprfBPN/OnrUFdbIQdqA6UaILIJ/yz83RMIQVsGsunflMnvG
	 8I7Zww8OvWNnPNXQk2wTskvjLA+62usNSXOOM7qIQV51uihBg1CzB+Qw7UhMqZCI+/
	 xnoqM+j1OTorg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D62C25B6F
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169830829642.2937.13676649826358954871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66de1f0af05c53a95ecf1843ff3670c15da7ae28b631ccb9e0d6077d8fc8c66
Date: Thu, 26 Oct 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698308296
