Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C0D17CA9
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C43C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667996454;
	bh=xhvJhPupmd0hTvQGm0ud30SCX9mAilRLh59VtkMn5K8=;
	h=To:Subject:From:Date:From;
	b=YRjXmMoQQ0gf5/hRVavL3PL4FuaBkMa293q6LKDlLrAUYuG5Yj768qm0yopDnluzE
	 g5Hc6kibhGtT3qsniP6zluyc+Cch04FwItLfgF7elWN1Ch3/f8SH0gM9bAabpAX8bw
	 SzEN+UOwlHXlBF5c3GbVBMvhDLHOKJV/tp5GpHxy8TRff6xL/DNDSf54b4qjZrbvle
	 AQ6HBZRfYm6qfj9WYRde2fIpZPsEPFwjPTWb7tEga9dS/zLnu5pcZaMvgU/KK+09cN
	 0Wn1WrH+y6X5KyoCGR/Y66R72aKJGH9ZqdyZrw7BXTCd65Gl9DAbtis0el9lsYkq9S
	 m02CVc69h+ALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5722FC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166799645434.8434.8951466480670813260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7733871171878dfa9145d75f4201c5ad60b242eec7d9e91e9041b988600bc831
Date: Wed, 09 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667996454
