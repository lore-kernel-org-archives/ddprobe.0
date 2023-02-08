Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300FC79D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90EFC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675890065;
	bh=I75qnqqGYjzFyQBESChXeOQVjXUDYtrr/zyEsjyLP8o=;
	h=To:Subject:From:Date:From;
	b=ZEgaekRow3id+PFLn2zs27temFAk4LdNl5o+eCj4qzRX9yXYmJlICnHHa+PeWqShU
	 L/Z5UpCMsUHKGjdkknLqrYvi1vROKMfr2CCRhwAGnDhJNhdtjWGDHczyrZ7mUulLeQ
	 oic1rnTzL0H2xsyg5CYUWe6ujB51CAlWAcDWriEamzjXFcAOkY4J37tpPJ0Pe+08cK
	 EeDjZ5fiOzIJkyAHaQd3l8ahLrZ1bmQPTnCZz9q2ypUvoiqusMtbLU5+2m17BDnNCu
	 LNVIlGymgQtsdur6DF0NWNJ/J/w22LJFxVuijS8voYbIuSnOk416avfWQv1fC7VW2q
	 DDtHsH4+ZZrCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA492C05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167589006575.14885.15946946009462424475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cd7e82a8954a6adabb4b0ff85799a6eb9a574a5e88a3444cdbac8c36895a15
Date: Wed, 08 Feb 2023 21:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675890065
