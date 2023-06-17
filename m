Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E33E4C8C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 15:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF06AC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 15:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687014608;
	bh=y73MaXrf3nHozvo5h9dxBLACj5FrP52iqPCA3LOxbuA=;
	h=To:Subject:From:Date:From;
	b=PxajIXjei/FxSqxtr/sW3zF4EXq+1mI6ino6z3QU/suRX0JweCDDfRf4PcOcn5B4o
	 5krBXOy3MHOnx7nDL3OgJW6zVdmJobVQqYgJHVMYCMJmvjK5PxCiheKxAtv2XK3tGB
	 lwO2RUZcDnghgYleJYeECkz6Tzc7WTp6M/c9L33vp/Ak+rOPVEMWRhdxSwfBxLSxgx
	 7V5lrf5GzaV+iOAnvsdgD3rMird5Ih2Oi4G7Fnb8jovTuEpeMHqj5y/Sx+LHO6XTNj
	 B/RbfGRX9zOE8fu7tkmDYi4J3Bxpa6vbNXqOxscfXi+Di/LRb2F2Isl4ljhs0jHkSY
	 05jI8g3wo075w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BACEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 15:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168701460867.24432.12331915079450817737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4845040319817647a9cf50d59e3d8f22a9a1054270a3982f60d436e989da53aa
Date: Sat, 17 Jun 2023 15:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687014608
