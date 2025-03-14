Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D673146585
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741928334; cv=none; b=a4r+fTd0iqCS62SplgjqIkkDUwrX4/BoDFbtaS7dBextb1Kft9tcCoC5LBS4VHcOkYAbypkCe8owa5+2S7AjgC5JZFs9HWPlrUA4pR3SHF+NBejn5u1b/B31zVcLMtS1G6StxV0YTbDFTwSiq7bn7dTirsHn8oG3P4/8LsykNbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741928334; c=relaxed/simple;
	bh=baZmcehiWlUo2mfqfmSLe3lRtiMSLrpz7PecMp4XDIo=;
	h=To:Subject:From:Message-Id:Date; b=XIEISqji5/ZKrBMuF5y9j8osNxzGG8L0nBI79AwPpJtaoXIsX5hwJD4+dbashUF5zy0JqiEJti6vaqsjEjIb1qJBg593E+uibOb+0Tos4iMeS5GsApv3r+PgWE66aoLkQ2Rr/4GoAXHchb9fKHnzMUJMECzv44ELMnbJKzqVOVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaiK/k+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaiK/k+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4427C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741928333;
	bh=baZmcehiWlUo2mfqfmSLe3lRtiMSLrpz7PecMp4XDIo=;
	h=To:Subject:From:Date:From;
	b=CaiK/k+FuxL2QCdGx9YsU9f4ySAy5PQuYaUlAUja0b7b0FF7i+o69Sp5P1EcaTVMC
	 6pjeqLsecqGNPsvOlYIVdn5fhZEvVa5WakAo+W/Zl0ZVOVxLH9zMJwoY8JkMLHNfHO
	 NkZMEc/6ru9qC2T+Pi+dLuL8BsXGkjJlFlRiu7mxGNPKf99Se8MSgUFH9jQrELLy8/
	 GPxJHG+2YxUzrlTGBgD+1yiu3D/XdLk3x+FqgIJsv6pKTm5ScbOExotZDO1SxAULd6
	 r5dDLz68p4pJ04V3BjdUiQZgnwVqPPa7sJiz9AW0mjE46R5tHcgvIqVItDwR97mAWF
	 uLpOG6/IPwK0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99494C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192833361.13619.2554038479988947891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad6736c1c9d1b715e95809419311cdde64c26631252e4922704dba8db414791
Date: Fri, 14 Mar 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741928333
