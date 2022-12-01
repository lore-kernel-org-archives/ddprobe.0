Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F2E2F5F
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6E4C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669903254;
	bh=g1TB4BrproBiYf/7QKOr0fSuIYG2j1JkRP9WFOtyqdc=;
	h=To:Subject:From:Date:From;
	b=Jvr4NdDUwQx9rz/axRJXSU5bAEAr4HP3dC5CHMeHGiAworqcSnGrv9YkIQiRXpA9h
	 LOPD4XKxRjAU1i3O0goOrsUhfDv2ukQyQqftd6cvtsw6A5mdUQiXwGPsfG2ZaqgWfv
	 O+Jvc98tpBkOWqRPwxED7vhtIxMlyC81MBQeKNDA1RSDFHPzfHFeMKPip/zwKJMEtW
	 IeHgR9iQjhMSuVFlMaoICVrHDz7JjZBiVDXFqfL/Y60lYKMd6TaWGl+Ki7hU2MBOu3
	 VznyYK038n23Ot5KagRosWv3ZrHqUnEfX5uNloSzrqevCafGglzCvqzZBbv55Hu6x7
	 beZp2RypA9/og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55035C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990325434.23271.820636550516991391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1aa76843a32129a2d543ec103b44dd0e02716a1ac05035f6f38832db6908e0
Date: Thu, 01 Dec 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669903254
