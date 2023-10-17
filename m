Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AFC2D031
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 16:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oA3+jG3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0E9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 16:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697560628;
	bh=2uLx6h7+lBuVQwlZbXz1bq2Z433I5jdQD7VSKlFKO68=;
	h=To:Subject:From:Date:From;
	b=oA3+jG3UU9t3v83DGDib186UxV+L3P3WrIysKcT3GlT/pYXgWT2WgRMzbqmo9pRiO
	 cfq2XdIilOBv4LADqROKsiLtLHv8PgXZQoSEpHuG9blhwj8qC7L0TRLVw/xU7uSEyv
	 P2O6vypH0isY4Abb0rZxnoDw84e1/w4E3leNCC+hagrBSR8YH2wN3+/VSHImR6TZPm
	 igFmopWr6kgrW4MjcQGng5UlVQ9tpZsnwWYVU4gmjZ8Lq4pH/a4HSPWpa+K3NACHZ5
	 ozptiGcJ1ZrOpxvubco3hf58+K5Spie1I664GEGMRFVv8UJ4d9Xoc8A95n8w8BZXDI
	 VmS8c5EGRWvFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC301CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 16:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169756062869.18586.5763334943157982640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d60d3b29cdd5deb1b7e0273d8aef708852afa2eaca4dc1eb8f9a9aea7870020
Date: Tue, 17 Oct 2023 16:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697560628
