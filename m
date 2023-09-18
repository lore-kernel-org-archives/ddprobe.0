Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E7C10E5
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B73C433C9
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695055508;
	bh=P8HdoiikvMF/E8R+GURYOtd8kyfSS+r7zCzdRoN39Vc=;
	h=To:Subject:From:Date:From;
	b=o4evwyyS2LMtl1ucOXjjlGP2+oTO/cij1A1Zj4hCOQGsj000945C5oml/Vdqd1XCa
	 Er/Wvbs2rsYgn4ZuKA0HRDdVhvxbwlCQDjPHKkWFM7EFBXlSjN67CfyBz9wtqxujDJ
	 P3TSafFeoqASGkphi5hhdIzEtfyKEh//q+fQUscBJsWSJ9746ljAHIzBl0rYGa76LI
	 PRGFQLQxB3tGqdqVO8uShYTa7kcll0Yw8ITkgu45BIHsXlnnyyZm/Rgcqh/mNEAtQP
	 E1CKfKnVG/SOUWGzjkVRYkX5vsIRS9i5gn27GdR1Il2ccmww8JSWY+Rpg/KCXpcnfE
	 3+6ATADf+fyxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12FC46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169505550870.15758.5865306593799960887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87ef5aefa5c5922ffaefab9e09019ef4eb35bcf3cb53ab264c2fc230b62e62a
Date: Mon, 18 Sep 2023 16:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695055508
