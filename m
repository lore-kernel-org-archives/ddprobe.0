Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28F6A3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA2BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670580687;
	bh=LEXgxKwVnzYYbRvSGtb6aZy7EbD4HGSETIEMf/erdo8=;
	h=To:Subject:From:Date:From;
	b=Aa2GsTwEUz1VvoGMkipVRNEiW2+F7xMxLeLwfFaV+axk+3jh+RRdvUOMLagoOWSBC
	 q977FlO5UxxiHACrtts/iyVhE28Sm+9uw47C+8y+yDDm2wZ/XBsQR6j3RdH2bNrwLR
	 QyiCU2xDmoumDyVx9o3dKVR71Qel89rwOZxsVaDyS9ACWayM+MaXzXoZFHZ7SvaJV1
	 dJYeq+LMZXP//loU/Fv/hHpeoeDF+CjneRU5yIKl1bE6Mw+qiwHzLWnM5Zc6pGJ4rB
	 fkkhI4ktMvPdlwKm8uCyW7ldIgiQX66La/1oKbv29lt7wYWXxlqOrKmmP9kcIAhUMr
	 k8e1PywE2tXcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE13C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058068738.30316.2117959526970462241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7757567bb3ca430703b87b0190d14d098dc92ef48ff57c9046a1dbb914f947b9
Date: Fri, 09 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670580687
