Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383842F2C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 18:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A7EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 18:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679683265;
	bh=LgUrjJiiLXVFWRIyn485w6KXAALtcymlw9vDhZ3gqRs=;
	h=To:Subject:From:Date:From;
	b=rMa21vLipDYCvfbBn2BLuksompckMoreHLDIWWzCpMTMiI0bcacIxRNXUZpeMUW8H
	 Q6n5ByiA3010jlQZU6UG5SDKwMaFZggc6DrK4W8Kj+3v2B9PTBKRp1qWPAE9C8thtF
	 eLDUv55Ja2BrdfeZVQFpUDEuxtSSargwdYXBcMws0U78ICgjRWWc+2MDIcDJz7jYw4
	 7cObMzH/MXdvcHfpacBDJWBJSIwHLrBL7ucfBb6hMYMSe0XkJoiElKkOQk3ghA1CwA
	 lCoEjKuDeFOnQX62OPzXq9Y3SPyZr3OESncYvRlcn1lTtF7/FUcbs4vGqyU4TfFUwe
	 lVWs2zUyxVr+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B602FC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 18:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167968326572.17678.17707612274516747434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64725c3b7b70406cbc3f51fedbeff33b08b9cc9891ec535b2f1732aa87458d5d
Date: Fri, 24 Mar 2023 18:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679683265
