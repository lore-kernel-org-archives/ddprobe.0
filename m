Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D191E508
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 18:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6A3C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689098828;
	bh=ki3YVZUMYUzf/C/lNrK2U5q6zj6zJ0ccw9O5bcisD6k=;
	h=To:Subject:From:Date:From;
	b=eNaJ44K26bcCzNCrK9RATgJj+gIOloVdLhnrEPm9KhCS19ViZqrWaNU1Sv1y18hbL
	 GGqJpcPmzfezYKsY/7pexgrDqaerLfVDDE5Lz169wCNZ2idynOWt39lmU2RTlG9tm7
	 ANLSC6oljeJX+Ky9gyEQTFt7OZBTruoL69xelRjMuKriF9OgT4ATSAkcaa4wL0/hC1
	 0lZa1WpmMlKNfstDstTiJEQuqgmmPFDxdJ28XUXtoJQ9Pm+ta3av7lNOGxMkvl9LB7
	 OZflXQjddKPFXRKepANpgKapg1rdhW8HD0dFr8W8esH5T2IvNhWZVcq/8RyY8T1gGK
	 92zVFfjaZe/1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD438EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909882870.15620.8139625718858087340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f141afe15131042f69ed0a0ae5106d5fb0d6afc23f6392a914cec6310d4f4bac
Date: Tue, 11 Jul 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689098828
