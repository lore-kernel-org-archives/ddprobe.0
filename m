Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32AD8470
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796B9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671024087;
	bh=FfFz+T2fldQ/n7hxepdLew56+YdbMVSlLExv2fD/TP4=;
	h=To:Subject:From:Date:From;
	b=Ow9+QmXdPmktM3U54Wk8XMbDyVvJJ1J+lDD63wZsgc5a5sdqpqM1s6qq0VYsfyH//
	 rdJDjhuaAXlgzUaBn2zmAgSESwkhE38ypW/OHT+AbqICzfINFGgj5MtI4UcaaHkIko
	 Ys1Z+niJpkFXAfi44zB6Pu5q/9q6tvIdgwKqi5babL0feTP7m4DGyiOLUQzT8qHDLz
	 XU0XNSwqS5ml7E5uU4Vs1hLkGLBb0HM9Olt8PsblaVwwsKKBGqGXqRrUAtHWJUea0X
	 FhifC21lQgINzcjI/knpcWfDskxVzlmb0mbb29vtOja3fMKUWx4F348DR4EllvTppO
	 Uy3Q4Y3IIcAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63586C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102408739.25220.17980671302148164200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0f0b50d696d585b36dc0b4588394cb9f331d7c9f1b2748eb5b51a145183365
Date: Wed, 14 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671024087
