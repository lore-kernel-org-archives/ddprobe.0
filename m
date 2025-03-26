Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343921A4E98
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742995194; cv=none; b=KNco2rOp0/PpzWeAODcBzRw08kad7hcB7EstUrvLNDB7qhfGx4OKi3MpJ1V3FlxlW62CxLc6H1prQBF1pnLJ4zHUt3igUg6rmtuTYvPawxwRYvHnkndbHHAsU1IAjqxjtcCFRlmsVvqT6mB2nyQW7vqWTrkGlGogYtxppWYJz5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742995194; c=relaxed/simple;
	bh=YAXqVX/eDiNPPOfRMvxjhUQdLICWBxWLzwmwFYb0eB8=;
	h=To:Subject:From:Message-Id:Date; b=eWQZgjZzNvRy+Yx5GJ4b81xyb13SnwciGfIC4LpbHCqH3P2vrxx3QR4GWj2H+MxCCNQwmH9OxVPtwqnJ4bHQz9U9iFcfNrU6cvQ0OGJT7P9JSBkQdLYhprfaJHmpo+s5sND+/4hhQG1Kl718ItS0T/P2o51TxfjuGS5rn6L3aqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9qh1P8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9qh1P8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6778C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742995193;
	bh=YAXqVX/eDiNPPOfRMvxjhUQdLICWBxWLzwmwFYb0eB8=;
	h=To:Subject:From:Date:From;
	b=o9qh1P8EACARJKaNJchzBhT3+HILiuhCIM5EN7tGyvxK2IZSVVq36OcH0PDPq8WGs
	 2bKIZ2mox0qfdeyfRRGYlVyoKsJf18eRsiguNJAjjbaXlpSq5Vo9P5PGKdcZ1W/w3H
	 497VpTsZ3zOVPMEX8Q/xTv4nvJrgQUATIvEx49XrmftJG9vBJ4qtd2slcKwzlKbhBO
	 eF49+crox57OsIb1WzN9N4/mVq1li08H/2UZkRJHPf+gLZE64l/uVw/13MvAE1iLHS
	 ou0VIQz5r27qc+cqfL2QPRS7JekPPUgldVMICxetPYzonFTogp6Ve/ZY2XPOhFEorP
	 xwOteI/2FfPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EE1C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299519360.25894.7176436428275220149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84367005977cc93ace2d4d3969840c807ef6f768e1c808eaf6f45b876827bf6c
Date: Wed, 26 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742995193
