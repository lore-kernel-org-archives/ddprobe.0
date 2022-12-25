Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D961F1843
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80643C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671974487;
	bh=9Jq0HiosrT94VfLNB9tn1FMZ+ovcRvx/YwKzQ3uXUJI=;
	h=To:Subject:From:Date:From;
	b=e9yRytac2eBP04ac8tuZVxWxSlVnKaE6byWVSJKjtvHsvVmx9WnEgvDIBjPnX7xJl
	 x6qn4yrl0XxaEBJjU71OUR4HNQvT4FhsxBZxVLoHIs6R+gnuIjDwO6GqjqiVRxFUjC
	 rfzpkghb7AGZRwNvBZImBrdEEXcZkVfRiGTuAZzHCqX9PDuUwirKRyrLbCeMrlzaFh
	 M/+IF97W0/uf6uhw9Dh4QcUBm4hmlXhQOTbHKeKygFh0vcbXyzp6I8a1NbSFxQURUy
	 L1kRlzcRSprRIF4FlgzLy3E8NMHvcJklFid840d4o7muaRJSVAMxxeOx/x+maJ3zME
	 bhayYTBZlSsyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668FDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197448740.11839.1199069804941399852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8daa2d6ad848bce1a18a83a67211e41d19e7c7794cbf3446ba15b83bfaf0a8
Date: Sun, 25 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671974487
