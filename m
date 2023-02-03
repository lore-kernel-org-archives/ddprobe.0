Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326651842
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 00:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27AAC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 00:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675382765;
	bh=3TtYNPeD4ZSFQObZbolpE8ON3PwfIkRQLXeLcOoPZkU=;
	h=To:Subject:From:Date:From;
	b=ssVihOM292QpfT+ETCqCl3XVnTywOkgKt43mB2Jgcy88IAxDwMn0Cl5s1ULopfFxs
	 QB8T5+/juMiazZcI1Hn/PS7ZvBtzF7Y9aq5fbpSvTmSZlBsDJ31/AwNIc5qj6gCAva
	 x85uhzWLy+9BtTgt39V/W79eYGMw2je8D7MwVqhhRe/xA/ef9OwMm1Ey66aSYTSAzR
	 Are8qRf6YfHufFv/wCDbNnQL7VpxPz0SDM0H3Awcn7rAMqxqfhJqkkuzS+3nZg7Sbv
	 GCSnjYzfSouR/w0XZ2GMBfkDLevSzbJnIBAcZtyMKlg7bnJXNVZu2arDx2CNYwq8zP
	 faQleoeTitLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F8EC63797
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 00:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167538276575.27419.6874970015211116746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1367ec3ecb5ff2a70d902e0485257ccec2fb229a072bcb5cda031bd193c8ec65
Date: Fri, 03 Feb 2023 00:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675382765
