Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6687C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B63C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669782054;
	bh=3wuGO1ZsZZ99ZUcQYHefc2uKIDdKpMCX6iURHBKeiU4=;
	h=To:Subject:From:Date:From;
	b=nZfvhNMavPrY6+xjURmO0PotyYtB7ohgZta8KYkmbZpxOudQfU7A4OJdeA1vuff9+
	 8Gt9tz3OF1ONwxLN7+XxZEf03s5H+hsKy+yk7gKiFJSQ/M3Is1jKxuOjNsQGpdpSpC
	 lak+tOmLTTnkGGAlhlEvS5loV0WbnLcAngpbKLzrmpNI34oN5PqF7pg6SqP/VGd+PL
	 XEZQlLLelYAunP44haUIGOEyhtYVpJ+GEd/KOsnnoxtI2C40dugUGC2DnkPZFEXs30
	 GDdyrUx3dzMO0skEBgBrqk5hu2HnwpWLnTdmU3p11X3KsZxlzrCIhbecNaoEMGoQ+6
	 m/SLVbd4IHk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 589B9C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166978205435.3707.526850762224241738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694b5ccedf59d0877d53ba4ac5db3dbe384963ddaf62e717091fd2710df02ac6
Date: Wed, 30 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669782054
