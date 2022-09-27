Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD80B7F
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810C1C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664239253;
	bh=4yWxdx2DqPsPUVKckHx08ZPq/COLXDCKnOChaN8DjT4=;
	h=To:Subject:From:Date:From;
	b=IsuQfntvw/xCnkaB+SXM6ZYQ02jRcIeODlQjl3hg/0AHIq1c0q5diAs9SadMumMbn
	 HOKMlUxfjHe94ligJzY+MTaUpumCIAbTXRCDr6doBecbgOzvtIq3lwxL1BCIPm0ulV
	 7769zJRTqVs0+FFJDbC6BxozbSJxvHz620xN5qSePW8g1bXhY5cIuW5tgjj1H7Unyy
	 ZXiXb5R5ONkrNqGTgrk4ORbwmErZGgfaQe63hJxHr4qxpNNVN0tb0398P1qW5Ccsgh
	 9RZ81EcYwS3tAgJ9XhkC8kf4XcJEyoD037gG4aringGqcnVauKfshQFEUqb/LOwaRZ
	 +JbnJ5aivMGlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641C1C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423925340.14462.689904381782746677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244b8ef9ad4a94a6263f848063f888eed0f061e2d8e699379d324405a90f7b23
Date: Tue, 27 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664239253
