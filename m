Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C857C441B
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F22C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661539852;
	bh=c4Doi/IDg3XpfiaOWz3pgiTIhLKFdJYZPnalekkRYaY=;
	h=To:Subject:From:Date:From;
	b=sboqgvKpxuAg/iGDDG0EAw7KlPbewuo4JYEiSv6eLhd1H33S37oc+Rbka2VvVD5k/
	 +jir610e3NstAXZjGM7+gvEFwkTKDxj9LWImE7vBEY1Gq6xYWOs9Nqrt9m39z3fEl5
	 lCM0/h9YSzdWEqdkok4lQvaiOQGmeFf+VaBkZzG2r7+B4InwyBURntdurINPbLjYKM
	 v3rHyYqZPuGui5U2y9D307Nl9AD4I8LScz4AlTQiDpKKfXRSOUu3mF7jAsp2VVMAse
	 cLJvekHirj/6fYdStvyUgqkrA/a9dzNjO0oEihgqntD9HTvwwoFI5Ry4mstW+VFBlm
	 AoxWAnOssxXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561A2ECAAD6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153985234.28394.12614074408561543612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1d004b7577059616e7c22e2eea79fe204b912d4e2600ed4ac43ddfbb9bc310
Date: Fri, 26 Aug 2022 18:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661539852
