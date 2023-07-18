Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB62EDE
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14D66C433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689642069;
	bh=/4Q8eEACDM5pFrSazP8C0x3nQ0ZH9TPwImIX9gciKis=;
	h=To:Subject:From:Date:From;
	b=SKdgeIKnbWuhO8vkJ3p+XOVXmsr56wO0duLdKkG2jU6374108o+FRejszxmIVhBY8
	 34PgECKmY21pYHNzbdSQ8Sd9t1q08MfFv99sW/Dno3YY0x+eLE/zuX3sMH21+3ndvO
	 0pXxJyNOOqxExtUJVqttJCL+LhTUN8+ap21W84e1ZfOElDRQ0tdKIbov/HC6m95u1O
	 lzZvkWg5Y8fJv0jEA/7w+SI+z6ZUDBu246YVSUpBTUeAPRMFGTbhIZTnF2H5I3UdVc
	 sogPcOGDqeSSTAnjprD8xbKQlFXxxrCjQydUZbREalZLwvNA3tmORwUkCbo8BvRFy4
	 hbTjUNXDmcj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2C9EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168964206870.8623.15183905175998884034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e4eb0ac851b0bfe18aee59f061bbe8a8371193212de53ce0a20311b36f52b0
Date: Tue, 18 Jul 2023 01:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689642068
