Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76251C03
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE42C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663675253;
	bh=RsOhJvZc4/dwTRacq0G9GnZKRfRiFCFxp7qZQYkOBnw=;
	h=To:Subject:From:Date:From;
	b=TnvxQgKEevrFmrCGMJwpt868uHzIiirzMf7gA5lvhTUy7ChJsyFl44WOvM9d6/NOI
	 fak2Qno3VSZ/G22lAVONP9ZzqWC96b+R1r0nlrtsqDl7TIFGnmOIwGjR+xRDIgY66/
	 6xISOZYj0RmR6OXYsO0+rndH8xS6Ahy1w7/ZCuODy7Cne6YwQ4xJVjTQELQ8qb5QW5
	 A2Pba4yqjzbVj294Qeg8cQD6cFDFFvwZ8ReBIEXrLzfycPzhDnu9nb6IAMyAB+SaNT
	 /36Wv3q1qafwEmvRl3dJ0oo4x80oYAK8qh8ay7D78S/Jdc5bmhSm1MvFaiE54NJ4up
	 +Fi2I9G1S8BtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FC1ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367525332.8081.4681939246963017401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc7edc42b70b39d40a1248eb96cca2d4b54d19a8c793c6484ce25a797d83012
Date: Tue, 20 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663675253
