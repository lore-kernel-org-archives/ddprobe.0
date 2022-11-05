Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23FE1C04
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E5FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667631654;
	bh=xaqIlOPxQbdhLXdwOR9K5CFLdimIaURnEDjZaqMEyks=;
	h=To:Subject:From:Date:From;
	b=qZDd0l7CAXzRpziOd1eYz8kngqZWo3SpRqVY3QPvqSGbu3YBr2m/yrZ8tTCtFa8No
	 HIhxzGgVngcVFwVXrE6GK3OvRKQpe9V5bbPn8j+LbB/jQR1c/URyq/MddM7ag7QP2L
	 VwHVesCLQ1ha5GM349gq3ScVrx2MVQ8sJyuzDFVJZQ/93Mzy4It5t1Bb7RhPTkw0vB
	 Sfub3ihJbDotRerfepwD0xM7dVI4/caVzJfSNYySNTAUA1z6gnYi0NhlPThd1QZ+Ok
	 LgZQWvg4ecA07rRLo7pMB5tmEX6mG2p4QvB9DQhTI2lhKslmi8HrhfA52UNll9RjsY
	 fE9/QejMoWDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55644C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166763165433.12935.12811449367374654877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62454d59617fdbc11da4162f84f828dae6a04c787cd24818fc124b2b63a54485
Date: Sat, 05 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667631654
