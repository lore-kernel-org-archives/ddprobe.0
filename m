Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AD0C297
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC2AC4339B
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678396385;
	bh=+4DN3+QSHCW56qig/fIVz5xV/uDWZmPx7O4BCglUxcg=;
	h=To:Subject:From:Date:From;
	b=u8fnhq8Mr7nI4BA1tOE3Z9DQDkrWNZ6wdbw4ZL5Aj0Ng3R5WiiTrfbIlF6F9YXP7I
	 l1holPK1BSC5Nph/gGVAJGDiS5eW87se8LKuruHm2tceyipulvhvpKXVhTQxDUFOK/
	 zZy0Tmh38WCvXqPPAhH75Cs8Vqks5H3rLva68eY1IFW3KjRabinfFy9JPxVV/Ioo+9
	 IRSft9A24+GCvlezqeIGAzFD3QGsauC/uRKluRposMQW9uzEtR0qYBPc5Clg4Q7ocy
	 dSA2Z2Ph1ktCqeMrTlwVAnKrpL22H7ne1qjuUtxpi1QNJow8gWcAFK23s7uZlkmuAD
	 Q21PJb+0rXIjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB45BC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167839638575.12211.15942511747315041958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb6ab59916f7dfd7a7f907f133836b44c9b5d8660bb8fc69ff39b5dc04283ca
Date: Thu, 09 Mar 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678396385
