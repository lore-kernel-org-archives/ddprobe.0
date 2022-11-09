Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C273A6AB1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B981C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667986254;
	bh=eA6gIgsO1HxRHmBL0b2uwtripe6rzgnPqa0Uel/omLM=;
	h=To:Subject:From:Date:From;
	b=UbX3siWKGQXHPo9RH7jLtiUSRaVjGQzfH2qoAb5wk70FwCfmn01uIvgC30YhRxysb
	 vX+RkitsoEao8uotcJdO2hn1D9Didb3SauXJLaT2SR7CuIuw9LkOIkztKj0BswhIaz
	 wI4cXlGO5Gj/BQr+aUHPTV0HUvPC/lCdjt8myowUmK2q5gqQ0uEdp4HGRx2Xlunwwr
	 1SruWohc9mey9OOj5x4YyDznlR4yozDLvwDknyzxydlYLNZ8uj4upyfu/E41Rsugs8
	 VOFyGKU74TLE103qQa31irz+A24OHQwAnFkc5TILtBLr49086Qy9FtMSItnOlW8zOk
	 B4ugqNnPxe2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9E9C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798625435.10203.6830235742516922278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1909c35c9ada2b31622b5a3b0f6d5349a0b9887c500cfe808552d479ae4e64c7
Date: Wed, 09 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667986254
