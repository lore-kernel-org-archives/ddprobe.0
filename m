Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF70D3D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E4E1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668786654;
	bh=aWKIlj7PUFTkfpSo1RuKlDJkwl1xBDiksZaIYzjVpKA=;
	h=To:Subject:From:Date:From;
	b=th2j5WA2QEruhk4xus+yR1RkbfrPT2PlJDeHVulTsEYqlEqxd5sqNsWjwVbicOgo7
	 PZu0kFq4h+PnBBKYB0OhXUBfNwlHSmXcOcTx+a59NCG35JF2Fct6i1ROhiflMMIEam
	 USgjqsy9RekYW2YU1iuRkaZaES2S2nfopjAah9NLGN3pTAsDCSsJ0sSsHEK+9ievJh
	 S4XXOwHaoAuC/uAdjVOkqfCl/31e3WLnv1faA047m+6EwUxO8wPNYNkxlerXFTfHHW
	 jqjPPN3RgF9kKZ797mzxDWeRG1dherh0wwwhJoZCPo5BAdZ3g9RTrk+VpkJRBldMEg
	 NJM6enlku9rqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610B7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878665438.22530.11828259048324726566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ce07c2fd46b3920d02c39f0e2ccdc0ee531e3f663dd962e14846b7ad17f96d
Date: Fri, 18 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668786654
