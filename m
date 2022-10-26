Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB601C36
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666808453;
	bh=ElGrEuyNLkTFJulTTWCkixaWdRcRoLodfoaBO5XzTr4=;
	h=To:Subject:From:Date:From;
	b=Nfh5jowhFecnr3F+M9GTKNIm85iZJzZ4MgZjcPfM5AIBQjLZnqFP+BJcJ4HrYxFe4
	 Xh1orZK/2Z3WDUyhqGWH6J2F9YwM8AaRWHQOGXf3MVYqyGUHPPdbN6cVuRGwhU/Gp7
	 YrcKIlkSYmoHfkyRDMd/wSwX8+bJw9v5EbTEQTXo9yEd9P+pXXfuNdhxtgYX66StWo
	 GgFvK3h0YKYAuIe5vTFCKgjzgIZy8uI7DQnI/7+e+YO1DTaf8/sz80GhrJpKXu0z6R
	 aC1FS4uGo/uzU8HrnADXgjx/XvmiQ72thdAtGeoBGkbc2t6KyucuPlE5QURB8OJcUC
	 ChABzu4Dj8MYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8505EC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680845353.4099.8693769346313316626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27074d1c7f4e207fb97082544d415dc177cba7190f6c7397f31e8decb6f76fc8
Date: Wed, 26 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666808453
