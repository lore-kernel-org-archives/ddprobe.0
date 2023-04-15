Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7146D79E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D60CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681596906;
	bh=z5AG/oUA3ylGGYVxQE7snxNPIiHw4hlZLTznfn/m7PU=;
	h=To:Subject:From:Date:From;
	b=Nx2OAEODR2m2YgnOy2IcEAO1ge4PYgVthdcvVfIpdJMJuxmu8owQ8uT19QbIiJ4XS
	 MURZYNMW7BlGBJbCB2L8+qvjz3jjAx5/dGJ/abcXjR3kUCjKjjbDwrIyAPclN9itfG
	 VpWVhzpt8UFsJ0vJuchrbjb9r7y7CrHiVGpf98yNnvkDZio+lm4erPKKJfBpQfgbp8
	 XL5DbEAxaqM/tg7o+6RKoO5M9Ydi9t1vh86qZXL4enA8LELnGTv8xjh8qnTuo69beT
	 fDZ9g7NyRbnECXXRoitAzyy9HPbuFSQ+tvn7tngWy8quA5UbrSjN4mwcJ2dwZQygKH
	 1KXvAFmkFIBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2882C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159690582.5732.14975928209418592408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61ae19b509c46da34e5bf4dda11b5bcb3999af6157a3deae64dcd49fce2673c
Date: Sat, 15 Apr 2023 22:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681596905
