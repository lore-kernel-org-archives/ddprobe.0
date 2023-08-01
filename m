Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A14F4DC61
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7A5C433C9
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690906928;
	bh=OuiSpafhDx1eWPDB2IsancLp/1zmUY1U7adB8l3YOkE=;
	h=To:Subject:From:Date:From;
	b=mMCY/opOZe1Zf1ARBhTLUZONxT56/LnyzdbIaxbov1bmTUm8BmNGAOxOhsaiGoDy7
	 8QJ2/R0zrR4etiKQvhstjy+6HzAmEfzDgkYKdHXAuy9myCKkikqEZkWyWqfbIQlwSb
	 veWWz+qncfPiiBeR4ZgJRmXHRiUDkKVE6cwchPYAJVdrXL1gvpECoukacww1iWQTJX
	 GgSI22KM3rIgHOZmuY/0i8yDYFbn8zas0Sq5PEVh2eZXcbpBjRyCAiCfVXPAu6Sose
	 4tDsq6d744+umnUZNWT42TAje26yQmJ/AyEU/dtfSYBLXpSF0oQWB3js4YSKu8qgSg
	 l8ASSRAxqQ0BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7761C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169090692874.22396.4120845556950772835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c6db6c99fe7304bdf536d284fa6492883c97fa39b6d90dc3f88fb5372dc7b8
Date: Tue, 01 Aug 2023 16:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690906928
