Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEF64A0D
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789FBC4314C
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665428453;
	bh=xIvDiNotlLs4lyqZ1uKoxg2V/8Bn2mLe/EED7ZHErNk=;
	h=To:Subject:From:Date:From;
	b=LArTdrhGL2eRp/g1Tp6CCancnaFWVOoFraZC5SDcUeYz4Zie3lYFEQP+eqVVBDtVQ
	 xPVapie9zFqzcwlsxX8bwZrY3cJvuErbSh3HCvfGmn3tFDWb+Hwv2WpfPvZN9AwWNN
	 GrvMv8AVYG8WTKklP7Bv3EJEyWmQ3SLz5N5MrunK9UuBpj1k8UglI+PWyA3zbcPLgi
	 Ng8faovGpuUPwAZ6WRZSWVe8moadPUjg3YdkwmyOACFoWUxrU79CnCraeGJDUEDRDG
	 qHxmtm9VctnM4tmaWupKrzD/0LBqPxcJMNwW+NHUBbXid2w/OWyriU1qT0ZHvPeh5x
	 xC+X5IdN24oNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C4D3C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542845336.4785.1583223446885341830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7348cbcc32d0498395b7f4dca025053b53cabf57f5e5dcbf197ab02528147e6
Date: Mon, 10 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665428453
