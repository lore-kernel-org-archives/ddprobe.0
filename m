Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2FF198
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D98C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687494788;
	bh=C1/gVMcw80eqyIbDI/FDLc0Q7cv5124La9jVR7olc24=;
	h=To:Subject:From:Date:From;
	b=UF+k4wBxVQaTePfi2DmZL8LpyewMhkHJo6jBcl+6+qDz8GPg+mIjf32hWNk5fFAhg
	 0yE1llLFMDI69z/3XJRDgg8E/Th0Kipkdj7varangbM2PvSkQCMzKaBOsJ9LoLqJce
	 NbVwlzSqkvZiHVa7EadWFOH8qxPtNM8SKYfjXGZ6u6igdXHp5K6+YsaWLx12DN/z5L
	 NSdfT17a6ntIG7nyake2dBYGyj1q2UCPEDCxFDspZ75AnujohikJ/XG6/f3warwQ7j
	 XhKeZ4fqkbjdRuR9u5bLLKsIAmIbU/I4NmxU2t+x9tOUMp4swAJ4IaY7ZS/Rh7DUjE
	 jsQrYx3ANcxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EEBEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168749478866.25099.9108661252793521554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953fcb7b7a1b26fd3d93df4ffbd1f7032754f037d7c8e8e9989cfabc28e6cc10
Date: Fri, 23 Jun 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687494788
