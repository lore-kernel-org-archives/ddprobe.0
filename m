Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47268D505
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 18:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE49C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 18:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679425085;
	bh=py7PnMz7gtexkrpaQImzTBTNlhB+VKbva3O9OCMHaWc=;
	h=To:Subject:From:Date:From;
	b=S1isdAcfxVPMJEU1C5+XjkgNEkJ5/Sr5eGJHtvMvObBVe/7OXrpqa1nKDepXGQ1SE
	 eV/amefFAH5EmD1zKew2Z/XlT43y4moV/UVgsveyGJLRSiRN6oN4Ccd5VB+9OJkE8t
	 wH7TbOXT8n8xChlQeJWalggf6JBheyNanTomOWHM4SD83cvBUZu4Fu/qUgE8lHhWfz
	 hvQ3MbZ4XTWNZgXuOhyyHNySci4T8i9Vy4/2V1Vp2/YDFVnC9DWHAHjBzCNqrzHLIG
	 4KJCQ6+mB/9HKnrFmfIi5EA8XLhM51jlt+gE/lJ+8W3TVrUnV/aJcD44qLKTIMADJe
	 IkNuyx1qb0QVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B73C6FD20
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 18:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167942508580.29335.5249839814050090927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3288e42d9276a80083daa433feaeb57a56d5705540ba06b797edcb62188b4d12
Date: Tue, 21 Mar 2023 18:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679425085
