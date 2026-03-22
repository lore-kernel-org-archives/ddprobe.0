Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E279366079
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774144494; cv=none; b=Vw2bZlk1cnTyBSyZ/Ebf6gG9JMRhs8Uy+Oty1eje8r0cERIzemIsUDKKXTF2gaUv1KOP1N1DT4vgwQM4Hd/XPS8wm3VokL4ZZa+t+louVaReLOMGYh5CH+8n2WBfn1xQGDAg1/Rr47zWZYZin2ClszFOk7v/OhaVtpzjH9mJq90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774144494; c=relaxed/simple;
	bh=eZzR/rn6BGk6jScM+KzJm1LPvm9dMLI55vf/7+HBKQg=;
	h=To:Subject:From:Message-Id:Date; b=gG9mVc25Y4bimDVfBFK0ZA0+qaVu1v4gP7qxKZNKuk7Olgr1t0YzCE+NmJVxR1QRTn/SNSmIKKZOMVrE35MzKq/yc9c0UxUjr6YeIPlvPSbYUAKlgGK56oNiEijmQXducUj2TT7rUWgoRnn4Q4rPmst2FaLaNbWPoeoNxwob/lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4W8vjoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4W8vjoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B1C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774144493;
	bh=eZzR/rn6BGk6jScM+KzJm1LPvm9dMLI55vf/7+HBKQg=;
	h=To:Subject:From:Date:From;
	b=m4W8vjoY5ayWI2f8OhSX/2InWdCJlgb/MkKiG1EU3Lo+PGrAe5WTj5anOktyGO8vD
	 Wh7TDknt2Rlfg9F4f2mTFBbeUlEFKewiSySSqnzQQ0VmL1QARamPY5t7kp7QlNZ9UA
	 9pTebmhepLIt6EjF7sihsv6tDdtrVwvQa0aIUB2IhbHzv9St+eu5O+utbhnu6Sq6aQ
	 zonEo+JUeRHrL1m6sKNqJH2x7qTF0BZSNZIFR1+4Mggs61p9dbklIhVUvwkGO7M4/R
	 fQMTGX7WZtM4o/CmVZAZ/28wjqqDNyWYONrzmCCw5iJZsZaymyoqK+/A7jxqA6t8+v
	 gXJhn9kuwaS3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E51094481
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414449357.28027.11854528916006964129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764dda3476155099db6835755ef23d57c4a75c43be129055873463269413d908
Date: Sun, 22 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774144493
