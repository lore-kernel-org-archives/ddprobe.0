Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C7963D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A153C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673711487;
	bh=nLAC98lRWe1jF3fIcRrKd47t+qU8PW7AWuts4xvwaOQ=;
	h=To:Subject:From:Date:From;
	b=czIKYS9+GSHtUejqwA9Qj3VkY6f2gwo89S6MmQ1Z+mZ56nR0FLkltp50evhthEEOU
	 1m9KqCUGPHeZaSivGliQqWEynIJcRMYsCQPUSva3UKspygLLr457xLHkzwoWgHTrz6
	 /4uB1w6Udf5/yRBcbsLrzVuare9oLtJAKzUZMSYsTXNYpzfUTuFSEf4sRZ/ysGPwdL
	 Ac5HiYKnCeua7E5JfA29OQcyEPOCzFn0oVj4Ec3tJQz6yfpXMM+Gxr2Lfwb7dzMALI
	 Pve2BhgCZKIJL+qCF7TshSt7Ev6hWQDrNMWaL8DBO3+/gDxXt4znwGHiwvW7oyIVEq
	 ci8xZv8WTpB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC36C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371148742.32591.2838864797658429790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50675b038f70d3a2ca3190c95ebe476effa490d443d1ed82f2e2d1cb54f51ad7
Date: Sat, 14 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673711487
