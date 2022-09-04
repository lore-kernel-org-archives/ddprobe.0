Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F833C17
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EC0C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662328253;
	bh=RJffruUiudJsO1LOjeJSMgtpAbNeoK7ATZkJZ+c5OBo=;
	h=To:Subject:From:Date:From;
	b=TVBToE71xFesM/iA/IZmpyRTH1hQbvb4l0Im/QXWVVCQVjZgScDL9gnUh63UubK87
	 Tx8oECCVj3axt6DlW/gygC7BpTmzJRXmBocq7pDAQoK92PRXWlCRRwzEamGDwtqRPS
	 rp/B39mAHmhvpvPrBqYGBi+j97cjSQso84KIwqJCAxkjNOxZ2ooAQ8h4xUfqsosksj
	 6YJfeSrGORd8fJO1C5go9NOMxv+BKWuec3ZM2HBQxGAUqxSbzyEdU6SqyOrSz2xc2u
	 dqPpqrDi/mIUqErEX/Yy+w7TuodLp3hsshb5lfglDrd13SWiQTAqyibcCnwCUbmy/C
	 XL5qUrYxzTPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ADBECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166232825334.1783.17139015124773530157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7039a554290433d95e19ec445d0860785149153d43bd9beb9f19033695e78e
Date: Sun, 04 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662328253
