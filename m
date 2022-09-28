Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B425E7E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F718C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664331653;
	bh=sMQ9fnbdg0V+BeYfjZRBZl6hFwe7hmY7bq011BeiPb8=;
	h=To:Subject:From:Date:From;
	b=QtXkleP0NFUGvm0ef+BS/TZf8zcVx71176OmrvZf6k0LWt9YhWQRjkg5EY0qZSm8r
	 OepVFCa+xy/YX5Zvf1Krgjt+51buurcyPQVd1KRBjxV6x11ZHgOofuL3fODNwimy6m
	 sMOkYSfdOjyR+rOyd1bpMg+Cr6qYwaRyosJRwd1ILl4dHCrv/k7BhBeimKa6zueZdW
	 a4AXaBOQOAdLuV7f/Y0NAo2TfxEnG1vYPtC6bqfYG+u3FiQHL7bIZA2gcb1fUiVOtl
	 syeY9RX/UfGsDMVVGAxwx9yDVi3KivoOh2V0RKsd5dE1mEZF1/UpQSAco1GXSu72LP
	 turCTf/8cZM2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C01C07E9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433165333.14596.15290628061950272628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097f09238e108b128b56e904c375f917116166443dbdd6ef7283db0b575a55d0
Date: Wed, 28 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664331653
