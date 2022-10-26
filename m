Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FE3A4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74380C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666747853;
	bh=nPdeFyeBbkm82TeVG3mW68tHLzudQpRas6yLSztx+Ro=;
	h=To:Subject:From:Date:From;
	b=VGxVr/6dEv2zoPiuppKI50Qew3cWF3wcoCLGB4h3d1fJmCdObCJ/B7p4ecyACgx5o
	 jksJjDcUN1ekoKlAm7QL7szrC1uc71kt55tA6HmOvsEdmcONzna8CdubYtacepMR5J
	 H0sZMQloSvZkmC/Z/qcEuhpj64PfHR23NSw9NfQA4ea/eNGFaNhA0248BXDeBFdU1L
	 iW+/+jQCoxi7cz97opSiwy/zco+oV0QWkN85/kSyBdqhko4FXaf5/Ikfkqt+6dm+9m
	 iVDaVpNQxO9EPgx1Xv9iF9/v/dlSaTkJ77ddwF/pcXwn1Bw5wTSnRGcBfdmgF9ouZv
	 AcPEdwqddQ46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56498C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674785332.20225.14654802518912993562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bec37d07f46cf0a107e412ff696d79a65e7748e1d29f38372d28149646aff0
Date: Wed, 26 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666747853
