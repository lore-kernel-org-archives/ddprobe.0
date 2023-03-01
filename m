Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6642F3E
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E323BC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677713765;
	bh=3kEfQRPo985XhNIp17jt4naV2s8WGBss7qJFnj4nQBE=;
	h=To:Subject:From:Date:From;
	b=YqxhT6CUPGc4eUQ6Tc5x4zW17i2gMm4TdKAiL0vj0Ofz8qbyAjCQwxgAnf7Pxi8ej
	 ft4BH+tSU7fFpl8cd6mNg2ShhUA/Cl2hfhEQmNF6cuflYXOpCE8dpRw2u0pvfmh8hk
	 M+x3sFDaeV2dFz775DOh/0okm02n6N4mYdmMJCu13ax0vg7ZtvAwF3SOdPh2Y6tuxH
	 Ed0Y4PjFqwDNWLqWOrnhUz/yhLo9pnqmurGDblS88WpiytdW8/UcorJkGpXhkT+Gqh
	 sB14w8x/zEDE6hkedWnuMeiNqlTNsGFPzHCQ8kEOZVDl7QgfPWYUreKBqzYVgvnL0w
	 r2vYxdWqXRG+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CBFC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167771376578.8485.1476524831493593947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475e9f096d27333553b1218802a4107af77ec0682cedabef1e29812db8975c62
Date: Wed, 01 Mar 2023 23:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677713765
