Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECF33589B
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2RkE6uc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E940CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697665692;
	bh=blLOITfXSz5j3HiHYwJqX4OZ0tNXc8+G5LN4vUgnuuo=;
	h=To:Subject:From:Date:From;
	b=Q2RkE6uc0o9oiOBSniuNyu4Nx0WBonNKpX/YAskSTAK2AYk7H02Il+l1MmybqvYHS
	 nvLFpwxFId+vUpGL+bzsIb98ij0eLN/HB5qtWty58dbROfTsm2SKz7Rt7V6UUJ8mad
	 nUgsmL89fnp09Ce9O19rNpOhVxjcQgr9nIb3xAMatREEJh3XMbUCSatKEBOySGYgPw
	 pfpgMglSOYz0inmAqEl+HEADC/NFlArYvz00pkjaf9SNhKUJWUOWDTaB9fZbkCQH+2
	 zJH/NPAa4JYlq3gRXzhpJUictYBQM+j9jKgICaINtUTol8REdq5YWmtiw5mEwENobU
	 zbJBO6jBx7pMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51AACDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766569279.22514.7996539351177769714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a95ce81a96cefed796be359205a6928286df2d8755be5da7f43cb0c6c8da80
Date: Wed, 18 Oct 2023 21:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697665692
