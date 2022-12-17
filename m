Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA4962B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96DABC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671248487;
	bh=viyCSKvRsuZ+nmrqMW0hUHz17dZcTE4IcYSpucfPOnQ=;
	h=To:Subject:From:Date:From;
	b=aP63kzXIL+IuS8YW3UinQ8YVcU32aFLtVw5gSFpIPZe50PHLmztjLyQ03kE3ljZX3
	 8FHkuzeRKdxgwI+glM9KpwIMAk7fq2pgv0b95EH1b/rNbC4XXAfH6bKZKhdFuns56D
	 /xQyGP6d84S5ULRfvD2C0hASYBkcThqNiDAHVlJJZRKee6ln7p1zUW9BX9ag9pozra
	 An8RBIZzpURkDWUGXSWnHaEuCc5bVg+tZ9PMGy1+oVg7W79FZaVag+rmrBxlJSh0Mq
	 Y9ohfrJLcC1DNkxJcrNdS3dOMZpN3ZaemPsGYRrxddpATa7KwMrBm67kZQ5mJKrm6r
	 FmOUzeB0TKE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DEFDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124848741.12718.16993120310140162175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d7bfca67bea05cf667675c7f37a338548b9bc6a739a5ee3567bd62a02a001a
Date: Sat, 17 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671248487
