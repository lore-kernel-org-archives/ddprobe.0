Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB40023A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FEA3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671780087;
	bh=GRx8K3HZR+PZiNaIOPtqV9DtlchMLoTYDN1Lfszesmk=;
	h=To:Subject:From:Date:From;
	b=NtWZRxIjrHE6po6Wm+bSkoxkYEIEQ3D96T3uct6DymmRxwBDBX+OFHSPdvzvmL5VE
	 b6BCpJZj2fkblbjQ2TRAWtZaoQKpYAaC+SGveqkGCF/ubf0XYk2AMhZLzOrVFY1dbV
	 fWTO+TcFe2vDo46FCg+WurEPr+EUB4WJEEY/Y07ozdU9ThniYlrXaeStFaLU8dCGs8
	 D6kKkNXj9KM4cxJMLhO9T8GmxO/IoE/YVRBQJrGqlW4beCnn1HBSVByz14ubb1crgW
	 IF2qS6U5rOnNl6MjZN7PMtfMxKvidonuEG42xrJqswG8sZPZlrHPy6WufwjPrhDUv3
	 +iCNcSu+FEhww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72100C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178008743.19247.14033568955115366852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19259ae4b6f96b4eaf5fccb6814d93dfa15d77464ba86e0f5af155777365ed72
Date: Fri, 23 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671780087
