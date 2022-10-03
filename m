Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCAF17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF85C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664770853;
	bh=IEMqb/FjKZu/OmjLOIolLYmwhY0Lj5elqa/ADe7T0XM=;
	h=To:Subject:From:Date:From;
	b=OIvu6W18HuNM9RNd3BTBFNmn6W4kP0e9cG2nh2cLGKvIj6F/2IhCv9d2g0S4zuPB4
	 usYSrzt42ZJ6/pSepuAqG7XQEuwNJf2sdYhNWbF6pqaytbvDmX5Ka82fxdZ4vLnwf/
	 j7PpHgXsN5gndSccPnLvtWbNzfVA2zeZ5CWjOxZW9QNuk+hQrXRWJq5mi+rMKsvtLX
	 MVUDb6uAhDJUmc60rj5FMBG1+az44RyIC9cRnCQ2wKecZ0DqbE6XfPpuR9OG4BJ2Um
	 G5r2m+v+kGyzllNF70HCidbz/sr+mB2lFXlsQ7M97A+2mdaEslZQbV5v6p8JuGfGWF
	 LZ/DduTrg+yCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D67C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477085332.18606.11619908829920515545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80234d370383e4de8057c9d129155f07dac6dc66202bb0a166ee81c9e0db6621
Date: Mon, 03 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664770853
