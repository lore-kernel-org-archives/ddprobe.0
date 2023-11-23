Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169942110F
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5bI8d2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F30AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700732296;
	bh=u7avEEH9hjYvTwjq+musgA1+ii/Md1Y1tVBHFe6xDfM=;
	h=To:Subject:From:Date:From;
	b=L5bI8d2eTMVA+GL3/8i9gMUzoqhJYNi6QfVm7K0viaJy/VBc50gefj4tmuJ0eCM+8
	 Uv9jB5LxpN4Gaup5SrvTX/YKyHSdwD5jrmO3UsDWEFJOhnU/Z3mYmPXpJEEvYza+3f
	 juILgmymmGvxLPWNFRuQoPTx2Uc7fV38BSv3+srCP7sb4sj87XCP6tXH1szIGOuB2e
	 gPqMRN4qN+FMuWelrgRm6t7XYb4SgLLlrtrSwL425kC5mY7aivKGx2tNGtKvW1nggr
	 mR8rWpGnjxEqXAg5WFdXDEajJ6ivLWALiJKj/WJinodtZgrvfU5qmB3CT1cttvgUlF
	 e0GfLwnkbA5IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61831C61D85
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170073229638.25517.8434587919084725580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d31ff7073b4a7096a003ea1b288f0f4fddfcfd7e0f3779ad6e33f42a9946d3
Date: Thu, 23 Nov 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700732296
