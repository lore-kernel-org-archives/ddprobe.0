Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6744217E1
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 05:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA668C433C9
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 05:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695965768;
	bh=kRJEkgsS9wxZeRFQVRAL2zW7AhX6CjcZJmenRrPAPbs=;
	h=To:Subject:From:Date:From;
	b=tk5nhsa4CXBdnoY3x5D+e2CuzBEuq/ihq16FUN69GZlkDe/wdD16lD8Yxbkf+F1b0
	 8sn3+knDh1/RfH9Rk+RnKcFNv29I2U/e6hdg4465JKinSgRr4Ir/M5NKMcn0eIZuAt
	 JLUWlRRgPdGecm+FKNXz3UMsRFbnUn4LjnJE8biFVSiiian/EDOddudleiwwFjiPqy
	 fUAAnaT2wVBMPQepGHDqImDBiYS46TZ6odVeVC0y1idosacoEYCzvEnfvtpD/vO7lL
	 50Pj0sr2dd+yC9STzD4kQBOvHFP87/Cx3rn+Dp6QUxQtSqrS42ynhxAas516hSA2lX
	 6HplbNzD1pVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D7CE743EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 05:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169596576871.7163.11988280858701207694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da872c5d8c553afe84368256d9593b747e1afba4bbd3fe56f67524f8684532f5
Date: Fri, 29 Sep 2023 05:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695965768
