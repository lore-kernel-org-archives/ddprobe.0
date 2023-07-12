Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8E51116
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 08:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43C6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 08:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689152348;
	bh=+uRAHSoauxBJOTDQ+b/wpsSImm9hHbi2vXusJRL04is=;
	h=To:Subject:From:Date:From;
	b=lujkOG4K0JaHa+qBc10nsiEvP6Y80AIOjyXCERiWKAOMvhdpUBWK2AMNH6IyHwgfV
	 vG8uy+B6VVgbAmEBH53X1GNOy+9KZrdKSim4ENUA8nxtiHrryfjqgumFLW9rGDic4T
	 vRQ6/gLio63jRPeqUAG8/5VM+L+AT7RDCuH/jP6WPsAHFFGf4OJcu56BDu0PbnOPat
	 KpVaD6PWVps5+GzpB8vcMQIvn5TFjT5TSL7c+TMg04s6bBZxmnZpzaa88v/Pu++KN6
	 L9KwoSVIP0MgcuvG6o/sBbmz06zScG3H1yxf31BbgXe4FCtYvAYcIHp7h1yJ15AjN6
	 QBSAUVAdTDI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD4DEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 08:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168915234869.28582.15360053302897837450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80060ce1432964a1787c0a83760fa9829cac6c165dea8dd23b49541f84aaa629
Date: Wed, 12 Jul 2023 08:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689152348
