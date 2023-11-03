Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298E42D604
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV8zth+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA3CC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699002496;
	bh=KfZHdWG4SX4q+6JdyzcD9rGhK5V9D84L681WINgj65E=;
	h=To:Subject:From:Date:From;
	b=RV8zth+r5YwjElBK1QHBBWEKJ3YPGylfBLAKA+j1ei/PkzFwLRuu6l48wTN564kLs
	 RWcDI3j+QHOgr5SWyqd3o1SMCvkm9EFbH+jgYqzThcEwuEFsKbBQzaV0gRqSVClFU1
	 swTuPXKE3kFz9BPMCLICqW8wck3YYsf9iW7O3mCR3XJLCMEueZTsUGwTrTmqb8/Jp3
	 sb9qcqTQyQjaeiavRh/mi7u6VT3MrcAsnrhdQPIiJf1Y6iGzgkW+N/3l8OrFWLU3XJ
	 l2qJxjHHeHsk8WOrlq7BmdnqIK83sDcVxqJBf9GrmIucVXD6gFjLd6+Vu3zgEB7uTK
	 qLMO+8+9ADaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BEAC4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169900249639.2331.16759053100808865338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503a929ae7e71ae27c8471c0bfe9646c5b387ad5600c69f147a73b6d3cce9984
Date: Fri, 03 Nov 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699002496
