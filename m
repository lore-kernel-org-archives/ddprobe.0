Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A779B15AF
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A27C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663158653;
	bh=4kCRVnkJ5Mq7OehkfXkL9x7hS7aT5aUe7E3DD2EC/7U=;
	h=To:Subject:From:Date:From;
	b=IKanUzMTJkE4qsSVlJguIODerBKcMww+X0YiaQhnUUtlUXMGraHgsCGMgGzzgUzPZ
	 /iI1vOo7fg9h4dT4tontdlNfdxckLg+4uzxug0VeTUohFxfw5WNeo8C78g3h1p0jm2
	 s6j2cjjYsiijCYGoARGt1sKY3RnOQtGYZQeYCg0jnrrTJAIzyFZWQ3+Zwx5Ph/OvYx
	 lcmorIK5rmhjcsvMTZmsfUhMNMnaVgSsBfseKh4GKZRks5s18GPoregWZI6Nbx1nVx
	 3HpY91aEnZoEV0lu2MLZ/1/0wsfYhaSZ7DhrWhd4JJ8m6D8EHHdMMQ0VYEJN3QYNss
	 s06GVO0XM/Fwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AB5ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315865332.21078.5136902595238193037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526a13704d1b6eeca916bc01c873757d1af6a5ca4ae4db6cc773834d730a2871
Date: Wed, 14 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663158653
