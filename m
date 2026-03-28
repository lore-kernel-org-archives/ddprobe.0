Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8EB3988E1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774716894; cv=none; b=GE7QaniSgwV3XEaXFJlrCc9ysaB1XP6JBNH0Wa8ueLm2Ht/wNtd0EspCuXShORClHcGqt9KtIu+cDmgwF3e3TQqwoXLlUUpZSyd4bmS9jy2PvykeqsSeMm6Zr4PVwil4ip/WDDWo+TAv+XFsCUbN2KJ6BbwxfK5mQslsEN0m7aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774716894; c=relaxed/simple;
	bh=2vw9/yyljh/8QtR5zKIjl4La/u+r2Ij6CqwRagURhAA=;
	h=To:Subject:From:Message-Id:Date; b=FgRZ3oNzaXu4XoiXZQqEbOGjrhyNM2Yo2EKJ/Src+ppGdDo1Cuerx2PjtooxV6zm94v1i/ffQOr4lHjrbNOgFMeL2p+jn2uhw0BKTHOuCw9Gi3jUgCA8OMtjq/vmKqJskpn1NMnVd03UXwY9fcZrhBwB1PFzWnVHgmOtiFnlFXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRlCyz4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRlCyz4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A738CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774716893;
	bh=2vw9/yyljh/8QtR5zKIjl4La/u+r2Ij6CqwRagURhAA=;
	h=To:Subject:From:Date:From;
	b=WRlCyz4GOZ2Re+ggTjqc/ua/IMOLHoFGjLkExnw6hlq0BpGfHeXkp1JXBgSon1trw
	 Vo5lorARo4NrcIt9S3OutXpml+Gq2O02JfzHTs/F5Vtkrs85RhyVtEPJLO8SlpWcSp
	 lGzjfnnFKzlchPSiwc9LIa+Oerb7UoyY9hR3TOqI1ejOBRA3zmp0pKZZWAoS1aD7ja
	 3r0daIlciqNRQOY9H6ApN6qg5sljoVU2KZpOjknD1NlMlq7qH4DibttBDiopakn2/m
	 yybm1qK0/+s3Q/AWBnBmeyNLI7Wzr2zmp5DvNeyhCurPoQMzLC1C+u7SqQUYqTAnSV
	 OrajQ+uGAxpZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3110F3DE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471689358.28333.6551526530801534764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e78448a9931208a206651ce151daaee0ec5f45f979c301c36031460d95e6c82
Date: Sat, 28 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774716893
