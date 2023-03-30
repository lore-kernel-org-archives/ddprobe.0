Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF4D1FAD
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 12:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25574C433A4
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 12:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680178146;
	bh=8X+2NZYb1Unvq6IhlgyJpeRIbfsMB3OU8z6mE9gmdUw=;
	h=To:Subject:From:Date:From;
	b=WMU0jDeKw+StXJfQKeaFP3fRo0wsnvhLMkg7rm133v/wkYBYSQEK0yFvA1Cs8ebK8
	 oVUr8K2yJXUIK4hgj+6a7QaMRzVAz6BFEbj0juxrOSlszq9TppUf23qxfWdD4/e8rl
	 XpNQMT6enZWT+AJ04ZoIuTjfJ9pFSjW0AmL7FmSlCUeCQLEWBS7fTI+b6eK02SxGjk
	 Pv16JVABpsEzZlVzGdcd1vzdflM8l9MvKIyNz7JEeBbIfP0fBHfP7vE3/FikmnLLld
	 j3rvqi/pL3HpX23VlZUaMVNtB9vcp0cHrT6MlrWdO1663BAM0vOJZPBEF6ZUnQi+aA
	 WeUaFXg2g+Kcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02A5CC6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 12:09:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168017814598.26932.15769144551881273570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2982b694f8eae16cf00fe925a06e23426e3d727c589e1fc818881b0ae8051b3
Date: Thu, 30 Mar 2023 12:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680178145
