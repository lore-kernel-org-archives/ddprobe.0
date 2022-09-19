Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E5C7E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB95C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663552853;
	bh=diJ7OLRAoXhP15ucHIUm5+uRZlm2yduBwkOXytCQVr8=;
	h=To:Subject:From:Date:From;
	b=ddlPrGI92Nbj7YO8kBD0YsI/TwE5ZBgymeNKqIV27voQiiJ6+G1tkzZmdfDT94WDm
	 cL+RNTMZUbbRLycY9555bcu93iotBvws0Rgiciv7RgPMB/lAJ31xJLZP0/hrG/b+yu
	 JyYlcQwQw/QmKPZo0+QnRwca8qwBGtNBwrv49rRIq1l+B6QKRcdVIf0jji41cOpnIL
	 vdUMM4nhcc7/1mfYpHMPYrOBCkNXRKu2uCXYjWwEf8nWH5xlfJAsUinL3AgXm/QAvz
	 AHfpQKY6STfVrWK4SBVxkX1B+F/UjVhxmcBD1AoT9yAYLIpk08pNnoE8GGrO7wWHUD
	 tkF+hGcKgiyuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A94C32771
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166355285332.25403.2576773889786128002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debe4c53276b4e81fd843c2a2d83c368caed60a4d6fcc2616630949fb61ff06f
Date: Mon, 19 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663552853
