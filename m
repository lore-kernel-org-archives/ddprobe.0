Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0C02565
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78437C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663802453;
	bh=KWassVqQ6xn+kCK3Unwfd7ngx3+AauG/Clh5gN+qOEc=;
	h=To:Subject:From:Date:From;
	b=dktnWAvlqXpoBEnXpSTCYk/OiZEYT7DqofxI/AN8NZL4wExTtDbNDgyPpkA38Y18T
	 GtA7d9m8XZV+wyeY72HUjb2Nh78n7USO8Tbna0AjwuEdWRnZMRxEg7KbRvPt3riwhW
	 pig90f6aD5QIpQpW+awSASZvwKMByObdxh2S2NkICtBT6EXoxzDEHxujFXhqPChbeQ
	 hPcv2QYUMNIVnhv/ZammDt93JzE8Ngf2W6so+16OXvz84Qh23VVJd+w9koXSIyPqJh
	 JqKOvfZR4gULyp+V3Ic5Ao5EumUBEHRxUv8zlIxg35bBpuewIY6toW4CAgYUlKgfhI
	 VTRfzP3tN4mYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F7CC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166380245332.29991.11609919652872049992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4206739603ffd30efb01bd99f0e9e93fe1a296966bf27a25412a9a7f57b47c2
Date: Wed, 21 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663802453
