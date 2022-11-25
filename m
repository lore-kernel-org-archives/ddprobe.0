Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71D115B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71642C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669338054;
	bh=tFQYlzkfLbfAEOCFaeAQpOL0+XOWUAFYJNyHlU5sKpU=;
	h=To:Subject:From:Date:From;
	b=MXxXAJdXe2rVWnsi2Xta1PI6u4feB+PQXGTnY2cL8jdEYgiUqwagYty/Vv1VEpVzI
	 yoYq8+iBv5NbiSCssH4nb4LsHi8LtiGnR1u9eib6ft8CxeRrdjMuuNouNVb14vO6Ce
	 RL5zCAjpgl642HhZAA8CycN1HcnrP2u84oyOsDNfkE1pYNeVy9l5R6M3IDgrKOooxO
	 iaS/0ssnS1FELZSaWHcRN8KuCJb+vDHPS1osMvfvJxUzU9WRRi9gmljZ5tXm7+tf/G
	 LNivqGA3EAHf2zwnDl1fHoBtqbyDiiK6Tj0vgEHbT8p2xyv+velhhETQYZnTIv2BzL
	 KLIiW21A3T9tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568EBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933805434.3222.16445742651255194778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4c59bc812d003baff85fd440e068464d8edd85ffd24ebf690f773445ef87ff
Date: Fri, 25 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669338054
