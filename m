Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03EA7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F2EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662930653;
	bh=KKjbQHNLURu44TzAwk1rAvJmnONuIwLJwl5G7xvqVc8=;
	h=To:Subject:From:Date:From;
	b=HwJxZVQ64v7+GhSIPb9bgOWgywmEmOZDH4aWaGSvPxoSOn7kcj4jm1Iq40ZF8vwae
	 ce6j4ZQHNVD60kEhoiWIa5wrdDIk6NKEcd0UhvR2dk96NuI6X0Tju02IYg/SRaQu2s
	 zginaQ33V2NTiWtlqVpugd6g32vTOhhrMsJG1WZ5Mr27Y+zffe6ASstlO65MZ4WHnw
	 zP1Ev79Vtla9QbKyZFfL2c8BbsAip6kp2yRzni8OEJJg+NcG0vIqEa4V0sW68Ne34E
	 3T4/hXNbv/IF3f6Sg5JHFFwr3rGvPLyBFXO9Ux3QvnaPIpIgT5QcwEWz0+Pm8nxrr1
	 3Rc3r/zYSI1jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D6B6ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293065331.22151.17465098869534873287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ecc66ff611442227aa519b517ef72e0635d3bb7abb6d09812bf5a00e5fd14a
Date: Sun, 11 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662930653
