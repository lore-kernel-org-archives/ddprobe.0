Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF5E3D8B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D676FC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687326788;
	bh=ri7Hnfuy8XstjO5pchB3TmpYIqci1TC/2a+scXlznXA=;
	h=To:Subject:From:Date:From;
	b=L5qpbmzGCpc3nN97baRPDOQ3BsdaqzIAn1Lf1myO58QDw9eBsfgJm8JS59CH8kszd
	 /SCuvwyfjjXF+uZ1j5YfKQH3CPBlxhBsrfLV6ztzNbwAZk1O+0TPgjvpVsv1LfJh8F
	 DyXe3VFgfpcEAKJPSnIGm8ZqHZkOK57gtgET6c1ytuEAWcmDNcf7VUXpgDPxiI0CGK
	 w5rrnhUaUM0MI/evFEhRhz5WAHAcLH2swzXEoPm+HcFAPdFaY/CPw6DSL6xdCk2cbJ
	 Jo5JzBkTFMNanzY82BOVHkleeCjEEotIcT98Bq4TjAsQ3LAUWQ5Lb95t3hT8onHhFs
	 ED14+Qvzeeztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6932EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732678873.29601.17682802735053511016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6ff37f3b85730245a9a4c666bb85d0c546db40779bab28214d4923f8a64dd3
Date: Wed, 21 Jun 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687326788
