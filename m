Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E68831597
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JisKYJF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA351C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696970828;
	bh=6tJSZ9Jv6DegNk2ykXPYsToywXRUKj9Jb8CW0SaUSD8=;
	h=To:Subject:From:Date:From;
	b=JisKYJF30/L8hvbQ4g3ibCI8JwiyIMeVPfB9tvdbNrj62gyoOIxlNy8Y9+2LyeSeo
	 QtNOBmZ23Eem6aa7awUITYl4pxagj18pe1cwf3iKQfozLd6X5Fht5/hJrqzCVqBvWe
	 +lLkpEMKFqOIVuU1FHKGour0TsiLZYgQSTE3XQlGSZ2M5tjZieqUKuxP9CSO9ju3sw
	 dhvoAJNeQ5RIyFK6fhiht8Jpd1TQTQDnbgy4K4Vh7CSfUaP5d0HW9G9ET2sUEIwyJ6
	 qfusOy6tayu51GlJH9/gxlsFTcwtssJhUNtjRgNYJnj5APowW01Z0IuvSlXRJ+nmhs
	 w0xI6nslJ8vbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FCACD98C1
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169697082873.8556.17745073809613402293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718c717c54cc76db9fd2f25b9c04f43bdc96e24a5ae56f942305581f39169a42
Date: Tue, 10 Oct 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696970828
