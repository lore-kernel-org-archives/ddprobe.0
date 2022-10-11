Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F548F41
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6E3C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665466253;
	bh=jpTxfBSWd54otTPRcXgKPOVKzLWZYx59pL2mSEDhGME=;
	h=To:Subject:From:Date:From;
	b=DRTysRFLo3i3EjThGXIPH928fMxzKEQtQkX2DVdfI+z/945wQnQR2blZgT27+Z9k3
	 UYnnKWbmB1fHysdCnuplm3a8D30bKI6jRWq7O6jqxunn9jK3FJFXjKC4giMES9dqlF
	 UgN940j09IP/96KzTSX0Ifagz7mBfa+jqNsJJNqvmw00RX54yVe/ull7HyBjGb3IFX
	 DN4UfZ4sia5/RwvLp/O6Z9PUeHhRHRJ06yOmx0v4KLRlHua10bjl+PmEEbbV/EoKrZ
	 DwfMrK3mn+1r3he+vP2BVHpb5zaVbgjQ/j3vF9ZELrVl5fqYKI5+C7HqtfBdYfuS5o
	 9u7qzUxPE5kyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53646C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546625333.24819.10515596412464991928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc229309302b6adcb0bc525752544f7dbe2b539fc864730b1ae8135d4cdde0c
Date: Tue, 11 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665466253
