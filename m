Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554954C94
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6654C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691740988;
	bh=wKyxBIyAqyb+v8zzDDmuWrtt9e2MWCOVoZLwBpc3JJ8=;
	h=To:Subject:From:Date:From;
	b=IrdlrxXBUen9xANqjIOT65oN47LB3D0S/ffXGeJFoy7NqmRhcMYDEeOXw+2oTE4aR
	 2EpwfpkX5cutEM+dO3r2CILtnJrjMq1M1QUM2+IyV8bJTniESZwsSlBM58/xhpOMlE
	 w3roxA4Dsy62bTLTdi5Q/pNZUYQ3NlG7moJHdAsAeFANSNyO9fcHvn51GJe7Xcki9K
	 jEqafjIhQVZLCx0mKp/5V10gFT6nIWb93BueEXtcQ3JU/1GAaAAOqzOHbBLfygjaHW
	 b6Qje8HimyRSMDyu2piMS6YaUrqunZCh6eTmRXkoBrmK4QCpRAcg0m2yDu+dG+QfMN
	 7MWtAbQWLEc0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76B5EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169174098867.1191.4660803432808598906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2627b430e80deba72d5fc86b7514be56ad309aa2b1b20c9e0afbdca3f947b7
Date: Fri, 11 Aug 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691740988
