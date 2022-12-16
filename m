Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D1920E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88278C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671192087;
	bh=N8L9GNv52eH0CTc8yiGmVeN6A17j5+V5p2gVAcwjVHg=;
	h=To:Subject:From:Date:From;
	b=PrWjGaiSDVS/aB9gGSIkPfnlYXsMkt5jd2c/ONwzyFyU89DDhJWdygtfAsxUhi4mm
	 PwXFLjy0zHn1zLJ2kyAwxZLD8lwqVy902vMTf5OzJhnRN+qUOVT2Tf3lss5f6zY9KN
	 WFC+rSvvaaXtGRk7ixr+FGqAZUQTB50/V5ElXf3zrbBFBZmBdYY+SlfKGDQ5HbfaLn
	 EQCXZv4Pyt4rS3VkCyizkKo/O39nFEawIHf6tzDplsn1zIOLqL7XMn19q0OaoZRC4M
	 mP/ro3fJwD5STP/Ae37i/idgTYoIv1gOUuoogqSq/3MbrSrbyRfAOAnApnjRPHruc/
	 7Fdm9lU2JEh6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BCEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119208742.23735.16412782244195628724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9bc35940ee25dac63639931c6a7f5c79d61ebce6ca1b0fbdd4db4c9667db02
Date: Fri, 16 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671192087
