Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36EA7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701B3C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663525253;
	bh=NKzLmDrPhHaabh20lV6wbMMR1RtUefPvrlnRfTAckR0=;
	h=To:Subject:From:Date:From;
	b=GN3fN+cHwKuULEAYNqrMIKgCtR/qbWxH+hNbcyLsBFKSjpSXQrNBvwGwQeuBkWyiO
	 /DkrDicvnNPdhL9yNt15B1ubb7CQv5A1G6Oxjpn1R4ujwkOAlFLki3HO5uS7W3Zq0h
	 w7/vpsnpo53h1HBeFhD/S+R58+sw8yMaYPsk7ZOwHFj1+IDBfnRVIft0u5OkQumcxl
	 10e3ugQ7VY51D60nuNwd8qWJ6pmHhdVF4Ivp/nZUocWuP0uXg2ne9Maco4cZyMbr5i
	 pD9FhPuYz7TL2L7e4kzzIJEi8biuxHYUZd5H25eHj/kxY3lFMdUG9LsgOnaOtcpSxh
	 qcZO48K3w1xew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BBFECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166352525332.25262.7863389936437023890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a335b69c3a331a128e48ffbad98c008c7c0ed1ab4b2e7bc5725a9a0cea1fdfa3
Date: Sun, 18 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663525253
