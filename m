Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7622736D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 00:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA73BC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 00:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686876548;
	bh=QCKquy05eUUY5Z0kTOWw7DZB32pY2EphpTWg2/ij0KM=;
	h=To:Subject:From:Date:From;
	b=StauIIKNSxGOPN8tq4qTqhAh3Rf6nBjjEiIMRZZiyldaEn0biZh86v3g+s/FcS1pT
	 HL+BYQZOzKibkftKrZgijKKBwcGUQ312yLj+ggMl8qYEWOmKRP1BulCSaZANmAXCu/
	 N4fuhyis8nStuSjZ3pI6wqr9QRuclNJ+CTjbZYJbYhDjU9r8EUbSDwi6ce2QSsc+N9
	 +8wVnYnXLgJFoMbb18+QeSbU56g3q8Hu3vuKdR1Rab1gryd5rGTA66wmzpspd88z/4
	 P6VnZFKSFwi7oxEcfxW/mU0EzTJ7S3X2PvkSD9FfPIYGFrXqNleQ62jJ3kpVodNlfL
	 IyZX8r9Eg6uaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC9DEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 00:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168687654868.18110.14894150233521541547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde0e8a8fb4e56d102caee46912c59803038ed3068b8a30558a3d795dec6968a
Date: Fri, 16 Jun 2023 00:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686876548
