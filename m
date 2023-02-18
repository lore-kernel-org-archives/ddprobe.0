Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446BF810
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 09:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7400C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676713505;
	bh=YnR6MhFRHyLXEJm43mjKLHrmf9YVcrYVAIv78FH8XKs=;
	h=To:Subject:From:Date:From;
	b=Bz1LTiMql7q/Z5bndgoy4HCnamTKIyfhV8lMPBsZzxYFPSsf41oquLpcz5wRaa9BG
	 ECBc4DbA+rLnTrGRTwlBpif7LoxoDBvclEDVRQYJRB5Y7U1AvpJRqUXyh5qXzEMtFX
	 YZ6BSb7+PF6HIcI4ZF7QnPeq+n94sHD5ah78BHeRlmJLrFgRHIER7oADGNd0UzPb1h
	 Y1p3GId+fbinnOUtQNWQN0p/JAVByIpP5BH/A8AgtC9cPzr9//xf9GfnJYXhzj5MpL
	 VkON2e4TEC62wNK3jPFL1nEzpxEF9vqM5T4D5H2QCrKfilIeJt+y/ejZHBL/CmvXQ4
	 Es8fmcaJB3g7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41DBC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 09:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167671350575.32412.12660518730597555480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3f900728bdba94c4583e67859b86e48699c1bbcddcd8e653d02547a3e39591
Date: Sat, 18 Feb 2023 09:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676713505
