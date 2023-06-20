Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FFB1FDD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C691BC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687251128;
	bh=sFGuKIfFgSf/9Rg5azYz3FZ3luXNz5++qYlK+jLV1hM=;
	h=To:Subject:From:Date:From;
	b=IT/Lz+EVhVeoWMSeN/dWr62wN3se6ORMjPLWUslEOPUMXyGXGjBKEQ+cGBzW4+KMM
	 noswsamJX/Dmv+FgpBrrlt1cSOWq7isGIQ8lnJ6gpKxHWq7UpYiW2TF+R/FiqQdVmM
	 y2VzqBy+Fwu+uGaZQmlMRowKWVzsSjnnIdkQ+n1DFwaxPFKeiQvmI1lPEwkas7bZzZ
	 CndspDYxnK6fBrDnkZidFL/by05YCWEJA+b5B1+J7X22CsMAzbphng+lvLHHRguMJ3
	 Jbc5NmsCfPWa0GFK575XsxAcV+cN+/W0A+v/pjzqr708uzUk3vdWRGF1Gwe4YvYol/
	 pHCRknGNI6khQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE6AEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725112870.13406.847590394636699479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5ad9d839cdfcd37a3e0a2212e5b82d0ee3dd03fe80190b8b0c1a50e3b8492a
Date: Tue, 20 Jun 2023 08:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687251128
