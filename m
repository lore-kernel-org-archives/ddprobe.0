Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D253D8C
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD463C433F1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674064887;
	bh=creQLVyYFIiPR+0bl/8iEonZ078TBbZmu4nkFlLnJNY=;
	h=To:Subject:From:Date:From;
	b=lv36TuuvKNXnNmvOI+BHIuTdAYcr3f+7TOtk44qiY7NohVGAFYxhTPcwLX+n4HHLJ
	 SZT/bZp5jMo6A96wo59KZV8LPtZrDI6uGVbUrS1UJn6D3kNQJGPTgF8mWLK6c/WdKz
	 YSIGKcwHTU2Wzf13zpIUKESop090uBEOpw4TNnCzGEe5FV72DiDGXzrfoOwYsCnrg6
	 kKECn70b1J7Fmz5VRg6PypmXr+uLwPCMwkF/SbufbIrsFLs6jiBFNwWDiOh+lKOzct
	 90afLmm4AOZDbQufB25UN8Iq8znWWmHpWaQt0xyORLqFy4gTHOmKXTVKE02bh1ASgK
	 XM0ep3EP4/AmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C82FC678DF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406488749.24183.4831867952752692096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b659d98181f74e08e99d80ad8b6e5d26de434d1d7875efe4109b13145b8ed8
Date: Wed, 18 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674064887
