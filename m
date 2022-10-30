Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E2517D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1EDC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667109054;
	bh=nUdGxPM97yUjlM1Cz9sVPG7DdJVJxp0RXZoAVk7vpKg=;
	h=To:Subject:From:Date:From;
	b=NRTpBgEl5YLj+jhjvmGoxGj+qioZBe/K5fFr+RzAfCK4UhtakvSM9bebiJ6No+VmU
	 /v1TIzB5ahZAJ1KFqN59Wd8oqpKzyvck1IWv0tf0P0e8KPS75qkcTyehTs2+exFng2
	 c5tPs0AZQdInhJWU2UNS/RwFxEIi7zTIza6fGUUYGBSei8W5xJ0Uxaja8GCDbH7ONW
	 akxMZ5uSDHsUjnkJPVni7phYOBjfG2iC/2ibJIDBrg/Gpc+RZOf2OEp1zR8vfgIuGw
	 x6no+H6agfYeAbPjUJh8FXnqQgI7PPC2QOhg55t+GWRjTrnE+KCX8yYKTYb17SqfBM
	 XlTjwr6EYGHsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D57FC38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166710905434.30436.10568935554649772727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f6f289046507c2e0d20f87726eb4f90cbdf542f88b4059a3984340a8b4eacf
Date: Sun, 30 Oct 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667109054
