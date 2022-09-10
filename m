Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0667FE
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 941D1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662786053;
	bh=sYvWGmQzG/DFBmVCFEEgS2S7c/Dh/wYYiQP1fi418uM=;
	h=To:Subject:From:Date:From;
	b=DBriSW84oPHMm8xhz8q/Hv9cqNL8p1fv5tubGYDE15Q/xSyKboWK/v4R6LNwQNWqv
	 /8xizdkXGLvICof1stnQ38F2zLELErBBC9dtBkYpYNMZwkDkKdnOo1R3F246xVfkVB
	 rDUxtwovNEz6/I6oDwvgZgPBXDNwtbD++cfg3scSif4lUkg0xf49R0ZRQilW7tH6cE
	 T84MeGLkAAX+cKX5EMM9mwsicmDpYJw5xS387WRq99wRP0gQgxbxefksvqxev1RC1C
	 p3c89EJI4gTIEKiCYoGfNx5/nHRRUvcRLSMBG1vdAMgdX+YE3rsjXlF/i/mqwsf3H1
	 QTJ+rmO0SSOww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74100ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278605344.20294.4300388368163329855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c15442d23de5473f48cc31f32f98f6d6ea5d3cadc7743e6c7c2b2ad3613f0f4
Date: Sat, 10 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662786053
