Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E791389
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E730BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686466325;
	bh=CjjXsf0okr7lYJ/R5F7pCrGHrcaAXmQ6uLReinNFdKQ=;
	h=To:Subject:From:Date:From;
	b=Hw/jTW3eT1wNhsDNDKBbrY7/EadJfmVMdOTxw5K3jY+GaByv5jYucfpNwSFtzeZ6R
	 iXO/9Z9TNAMwUyGQOqyHzErZC3TMzAWENs52uVyIz2Er61wzm1Rx9IXsseAODpMMXQ
	 97AeqFuqzvvOdAeSmSv3dAPQzLJWmqy8INrAGz+aOYHDrwN6RxxnDqKfES08gxnYMw
	 CSHGJZaJ10XP4DYfBhMzJJRez6TdkdTfoqusAqdWYV0n8lOG3taIaYh8EnfRlPpBYo
	 NQo415u69MLOXMvDv0i0X0nsLS34FUn0KvFlfiL1dQ7myfRVZsz1elJ8YkvT9XYGYd
	 Io1xKefkdoeAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4286C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168646632576.26488.14463931221015107464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34fdf472682ebf35f42b2912575513470046dbfcecc0f2cc148fa3aab890cac
Date: Sun, 11 Jun 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686466325
