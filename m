Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4106B361
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC44DC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688294648;
	bh=asScG+n+QD9HLomjbAQx5lmwxTWxXBAJk4XNhYiH1EQ=;
	h=To:Subject:From:Date:From;
	b=SkoqjKRY7HMzrw3cMQcwEtp/4e/Vi7eGxQN5uwU2x6i42akjuN+2wclJvceVRMkFG
	 lpEKuLFot3seQK6VFgJrijjkVF8DjpMGWuzqlSnS6iI4dW39JsEn1vKF6sPa9AUWcA
	 tzl385brzpuAf6PpbwBAA5cLOLaA7taPQSHUt7+8pl3o40FgmLNaZmW5p+Fr8fWlgR
	 YKZCztue5j6OhpsTh9u3kQf7UFgf0X+z8nmO6wVuIYBnVYQmqxGAi3YRNR8XB6fygH
	 h8vQ1rkBOOtJ/CK39jplayy6vvnPNOLVpajH0h1e4aiqo3kaBmQek/YLCq2mGOkB+M
	 5RQNeB3z38hpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE562EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168829464870.13725.6458793080760081067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa096675687a9c47b13dfebf9313961cd867c3127f393a344488ba145770568
Date: Sun, 02 Jul 2023 10:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688294648
