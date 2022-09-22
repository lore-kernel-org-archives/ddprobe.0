Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58338B24
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D797C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663884653;
	bh=jAwI63jHHkePNH8mGyvaJ1RWjJScW0L4gdQlsp50eDk=;
	h=To:Subject:From:Date:From;
	b=Kdo/ZRk0PdwRj4ec4PSRlUMgPQIBztet6ynyuA9gjgsG9RbrVbGtJ6E9yojYsMJ5a
	 0lbv229QcvrDF2ZvyBcZ5ANXh7RQBRfTgzuA9U7hXJbg2GK8PwT9mYfSdAVq21/4K8
	 Dsvyg2s8gkytvLo18q8mn+6L+gldbd7agM/ZUmGc56TcF6s1yLxRiFukvpp0zixq6m
	 SlQ6dBii/4szAQOgIw3ngWhDy/TEXpGqG0U444xoGySry09BT1dtW57PmGz4DJKQdz
	 mkGwCadZ0aqOYrhy1bcLkFVDXDyXuJKQtDmY6N7QXqNFYuigmfQjPHJKAJAAC2aB6j
	 DckUvNk0GSxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DE6ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388465334.24445.6501048779583603555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b85d632a78af5559fc3fa8174275706758f9bd0f1e7ca38da35c0e2c8ebc2f
Date: Thu, 22 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663884653
