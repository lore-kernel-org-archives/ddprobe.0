Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD58EB449
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 880AFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673409087;
	bh=mvxP7CUuIqyn8/t9C8kNxT4wMEmg8DMdAFv9DhMQHPQ=;
	h=To:Subject:From:Date:From;
	b=Vj2tJqjS6CofIQ2d4VG+J3beNvbUIy6UwLH0BVnfO+nESfJH4eGHzAL34OEPSZEsw
	 0ibHs83ZYCNInxdxyqu03Lt/O/MqfUrFpDcrsu17Y41KfyrpeAjbTy27KDqT6Elpb5
	 7Wz12YTf7BSW0gnAY4C2YpQ1Mbg2PU/fEkRsZQOQ2FWIS5dGKcHAlTgXvO1u5Be5+7
	 DYbrUDFEvG3dEj/obIGyGNwxOsIo2WDRqdzWo6PG5tJ1LkxNFGvsaE9CGO0FTW7mIg
	 OPnbEzb+T4sJTjdvpWA8HEzGUi0N9f97Njfxi6A4axbrjfFvMu9Zy6iK43P5okI+cD
	 xewHnm8am9OQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA39C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167340908743.2548.11740706444048664357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370fbd7a7ba5d908a64f16c67d5a19081063b02267c817969af30d545f34a8c1
Date: Wed, 11 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673409087
