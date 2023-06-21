Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AC315BE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60A6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687320188;
	bh=kBKld/8IjbYq+TDWcXrRJF+KCu3S7OfD+3gPibAEix8=;
	h=To:Subject:From:Date:From;
	b=Gmih9XtGNz0QoAUJ5toRAw8feqFuHBsEs+pLDsngpoAeHgX8fd3UmQiKc98j77q0u
	 nqBXxqEKSF/FWTbhJYZYaWLa9l1WTJ4FqQSs0RokZuxE6LW7RnI3VOE5aPduP5uVNN
	 Jg2TbD4//F2baJ51GZtrOdNUEcC1UojdhHf59PjaycwiXmpXZ+pNpsw0x9o+fW13pU
	 wyk8O1lxp1gH9RYiyJ8Gvr15bViI1qjlBLARXc03J0U+Uykww9w5VvIvxv9KfGjw3i
	 ipMSkeTxyltUK/YewetJxhP2Bamc3ld9kDEiYrQ48cRZED+08bXSZreB7xPxjYXjv7
	 +KLGGvaBYXZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A685CEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732018867.19010.12927005850880903949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be07407cad609bd35026ea4403e663544fedd5b42d231e6da0c5d50cba1f61af
Date: Wed, 21 Jun 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687320188
