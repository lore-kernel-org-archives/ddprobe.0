Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D1117F9
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5ECC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670999487;
	bh=tMEjrSFfj1K04PDyADpOkQ20S/nnhhjmNmA+9qEJWPU=;
	h=To:Subject:From:Date:From;
	b=de/eZoizVOwlpCQ0hmANari0IJ5fL4JD83QUtAR0efcy1K3cugfhHv3VWa2QZs3Y7
	 XYvMzIbUxlG8bLR7oWtddoJ/+Jt39C42r0QxiXldZRWuYYq+pAs19r7nfHTmVSmV4N
	 zIxWePCRgfpfRPDDiuDQsy9tRy8RVq7bq+hWhQdqrsVAoL2C050PLLl/sLuc6ZaGdn
	 ho5cO64jwmJL/UFTqXGKfhEZtWYqRaxXWun3p2HJxJ45FLxSMJExrni/5vXCqjt5dG
	 MWez06Fzova66GsR+ADw+CD4STnR3PeOAsrL2xNFhb2HkuzTpo8DYhPW72m7zOvKan
	 HAnoA7jAN9f7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BDBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099948739.5478.8888760098325814001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d6a53eb6f0bd8480e9d36405c73da0bb72bc397b84f45b6410ef5dfa8dd67f
Date: Wed, 14 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670999487
