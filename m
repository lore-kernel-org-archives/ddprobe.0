Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFF47FA
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqSl72lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85823C433C9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704328696;
	bh=D90RDRZgKgFy/2AdOA0SuxhVYDTGSlizcYXGxTT78fA=;
	h=To:Subject:From:Date:From;
	b=cqSl72lpxFQNSwAr56MwiNVlMAuCS04GZHZSBgFSR6ytJBojoHTU3zAlZy4GkDm9v
	 CZEVIuDD7Cl/m4az+kclRCLOVvkdj7AavYvikkIFxfKrHadO6ttBM++l9yI+yfHix7
	 dSz77nFvIVrpTKE3de5mdukRw6UQi4nCnS3twyoE1f59ZVyRdbYmQnaM/l6ncCrvCL
	 y045Kiq0qrwiRpL6yg4l+AqJjGLAoK7DZrwG3m7hApbqGsG9vvSct2OiMY7p2OUeQR
	 YtUYBP6qoBWM35sacmOfj0P30n6czmys4JZfqsgGUaQNNBSG9FeMKFFhDnQZbd3lXO
	 qc7O7fqxamH7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667E7C47077
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170432869640.14843.17879805913113140277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9948f203fff9e6fcf12fcc67d6fbfaaa3309e70ca24d888cf0a7796b44742f21
Date: Thu, 04 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704328696
