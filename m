Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDD82FE07
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBMw0Nl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1061C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696956428;
	bh=jg3JI1fnoHaRsG7aMhE9/d7Mh+Ce6ZYEzvZBSuDbhJo=;
	h=To:Subject:From:Date:From;
	b=lBMw0Nl5kSGZ11UtcV/bttUd4jGKSEpJ0PO+SXJZ+GO4vasR6ZOIyHyxsaTgjyt//
	 wuPn0f7hBysmYCth86aSlZYLZWrUusiKdF7OfO+4LVHMbIxNpZF87+V9QhFIydQuq0
	 fw9gx4WkGLt5dAVBw0s9WGIL92/zxBmg/4BHfcYEuk5OlTDUszxaCy26auXRcs1zlT
	 WxnEwnyJIaCfL6IJZfBDvhlaqSCcQuyX7fp+gdr6+LXO2vz1oyTyDW5RF5UsOqWQq1
	 OrzwvebmvxgXtIV1buzrGQfduPwCznVgw8FLJ/46BP8Oq9BYdZMxfJVF0v+VSy6Hte
	 CK4nuhdqhGtog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3399CD8CA9
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169695642870.6357.14746693743530840629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f20f12062fcf39e9889466ed5733577d43a2d0d7a54d95c88ce9308d3df77d
Date: Tue, 10 Oct 2023 16:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696956428
