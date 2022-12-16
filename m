Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22BC366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F44C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671160887;
	bh=4RAojcIJvflqfWNOLa2PHr86JtDii7UGyiuHO6xDs5Y=;
	h=To:Subject:From:Date:From;
	b=GKgh8VppbFbLSaPrOfObTBvG1rfxBTCFJUWxl9JGY0hoQBavUuHKaCMN/0lSlKyaZ
	 TNO6SeFIpTsnGUAdLVJbr9iA9onacAGr5aqFR1xppYeRH5BFJhVI8EwvFem90+rfDm
	 JRk+jlegrdu82c3lYxMUZG3ttAca+E0hHFm4thyCZiXPGK3KBIGDfl4nDSyGStgx2B
	 3vtr8EOKFqaQuOGZi5qwqLaWM03LiippH2IX6kF87LmsmCASw6K9WGGtlQFzwNhSp2
	 L/TwavMI1LeoTpgiIXjNJ5bbATm0oGM2Il1QjX2OX684qUG4h44ITEvWPH5PrRrnE8
	 QEowSf6DTOVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E4FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116088746.32629.15077251849386154660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfecf694d34d25ccc0d666ef958f5906f473f59f7c25907eb0ec69fa49398e8
Date: Fri, 16 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671160887
