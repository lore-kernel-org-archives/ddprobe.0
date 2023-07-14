Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C286FC8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E94C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689333068;
	bh=IbjKUdL9YKdFs/U+J9zwlwu4rb+IlSWbWNBiiB2m0Yw=;
	h=To:Subject:From:Date:From;
	b=kApaUBieeY1UqeknZ7WzZbBdGFJHiXula6fu6sNzFxz+f0nJ48GgEU0pCN7lqFKIT
	 H7EFlyyVH8RO4Slb6UGjbESM0/dKyA11CRXRKmY4YWhK4BrfjkOoAnn1zPi2DOGlbO
	 KgxWJJtk/eheT/e31blxerGmI8sCZGFzCV5am9pjNICkvQum3lgwjBI2GEifxvw+de
	 JaMLkqVUqPa4EY9VYPUgJQ6iYMo5gWZ2WdRDj7HdM19c27EXDrmT6ZvQWtN8biZnAM
	 o+mkDc0AZt5vo6RCtGjdPONFeEagXJ4wNIHGx1csg9CiPPPn9o8UlQLUSzUh26yfEk
	 IbwSQG/ciVCng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D72EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933306880.16481.17011156196226206430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9a241fe94d9f5ade61885c0725f3360822246124c50100be2dd28f44028a85
Date: Fri, 14 Jul 2023 11:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689333068
