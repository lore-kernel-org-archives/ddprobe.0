Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A2528E8
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 10:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3193C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 10:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677234905;
	bh=tqqiu7rPempWwuYM9eUqxLBru4Sah8xv3L3BNMY3Y7U=;
	h=To:Subject:From:Date:From;
	b=jlaRH7ntJUKw6w4S0tUBEcJJxCLRdR8kQQXsFmrL7cdWa8GbmNJX7MNY9JU6myZ8+
	 SCx8jgOR+XZM81BiwA6kTBj/Ed5Ac2hNQYh34MyqzJepllp2fZDiaH8oh9GB3I6dsx
	 bXEv9VCRaoBRMyx0LM0SYrpOVVcKu0r4FS+rxkgY8vD7KlQ5OWCX/K1KzTBfXNeMzf
	 j394/NuGRimzZcATIeChSItjJzitR/ZfkrIjBYc8NjKeGpTUs7d48WdWDDbQycLhZ/
	 xtXr3OqHH9qU8QFz0APOoh+Ob2veByenvowXU49PHuvk9kWh8oBO/P19Z/O+HAXyBa
	 W8tNOj08JkFLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C66C61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 10:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167723490575.26181.12269267130394456732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da263e382d25f04fb83e5f209525c2ece7c00c3c8a2c4f4e0db26cd87a2fb679
Date: Fri, 24 Feb 2023 10:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677234905
