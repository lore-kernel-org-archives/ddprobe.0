Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4AF7E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C18C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672569087;
	bh=g4jcxMqgesnZT3mooMZA1B7/xw7ukQ2kO6Sj8i4RZXQ=;
	h=To:Subject:From:Date:From;
	b=iHOMh/ukmLmWFMrcCfJECg+D8IuDDn+XW+A2IjGptQfO+/LWqxAk7K2XXy0iA4BQ3
	 5O7yaCTkP7MsOHfVd13VRF69HbwwJm+now/wRG7PXJPybIOxio/cUYl2SzFWvTQQ+G
	 pWiWvY3ryLNVl69yXtLwFlrrBOIjM8OKe1p0TYouCmLjhMZIEX73iHjVyyB7O8zzBg
	 F3y6IPuyCk8YQ33E+0f3vUu4n3oBOxoHkJycNWQoyPAqbshfUA049W/7+A526qlOsV
	 nv756mvsYosUglwFE4bRQ0E2BF+7y06NwyS4/bccxc55CZig3gBQa+NsTfabBZHoi8
	 Gn0MCAH32c2Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 699D7C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256908739.4282.5011350505919694587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1084abc1d626f1fa4a8d178885a73fafafc6ee102944e0ccba468d387caa2d
Date: Sun, 01 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672569087
