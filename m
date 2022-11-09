Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8C72114
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94797C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667977254;
	bh=DzRaSFORGovfYzTddApXIUhdZsCl6/ezSaalFeT44Vw=;
	h=To:Subject:From:Date:From;
	b=pvkJtr5+BqWybXVmR4VjHXivA5TYNBc4/jcq+USgk7QdNClm/7MW4tC4uxRsYepsD
	 dc6+MBtprkL8n0BaabILTOpuJxhXTcD8mQn7JEaIwqLkTO6wzOBsPnXDpnvky9e3kf
	 Rn8FB4Jq8zciNnEdUD++is117Rv9wG9V+jsM8FwbxTav2LXftyXhqO8/rsC3peSFmu
	 +sovi+rF43Jacwl2W+v1NjLdaByeRIT+gl1/PxNn+YfkpEt0mBLgtFyxuc2uVf2jYT
	 0lVphCfSJkbv3OilvFhQwtiqWYGMXgJ0BVhUw1QXsUxC514jVb/APVAwPc7XFWA1Wq
	 +JGyVlFALgA4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D73CC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797725441.25192.14980516685432666121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d8a053c8bc3115ea2091ca55effcfc0d9f706eeb6dfd478e9ddca70b4f6d39
Date: Wed, 09 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667977254
