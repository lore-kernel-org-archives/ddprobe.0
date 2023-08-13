Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62339625
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 19:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78FCC433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691955188;
	bh=KWQZBUTvpl694RvCVdcZ5utKtADEkferJUOCT/opnFk=;
	h=To:Subject:From:Date:From;
	b=Ml6S+fAKSNkvcM0iZOSDESrOtys6CZRI/QNqgdac2W/of461Xvm2jiXNM6sTveYAq
	 A9kiVr5/Pd9vWqTqE4x3c607bYijEZj7nWcS/2LEh+3AyLQj0Rce3bpBSRDdIdcR1g
	 ZoROcK8nIYmvqweh2YIcbNa9sw1wo6uxm5cxhTnFH9lnAULqh1f4+PlbfaGutcO1AT
	 fiU2mthfARJyyCuRcl1u2rxexSt/RbmlpfyAgebv83jIhs+mvnMUgqD7ENTNbGMy0J
	 RE8BH6Xt3V8yeSKoz8ICAOUVEMvMSTeYQlk4nlt2JyHMhqgtKqXAnzbNJr3EnSvyP5
	 /n/mJEcIRGYJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8FAC001B0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169195518868.12774.16866403453267118337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0881e7b50c15ffc40585d870ebd9839f3a86fb49178636042af845ec89cd94
Date: Sun, 13 Aug 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691955188
