Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08AD7B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AAD8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664521253;
	bh=IlOdlxu6ktEoRnMcbVJSnQdOBSfMOnprQmB3UKHw+hA=;
	h=To:Subject:From:Date:From;
	b=CwyOsoa7Oniy+ys1RxTZ3KMHbx35eup1zzKKGPFJQpkz8Smuk2QJIIqivzhky96bl
	 YOmJcPbtwsCpYEQZ+rn6sniTtC3ZUFabocmE8H+DzLQxcw93y3W4otU3jYn2IbOf8z
	 S0GwmY4mk30s+uoiD024148Aq+jOk0k2AwiF4kSXwEgIA4ySSNmdx4JQdBiKKB2iIv
	 FbunbJyCY9BGx7BCcfUz61CtxNNgXq6HItWhGcRcTrTWFXNOIjgkfxNGF/ESp3drVR
	 of0CbmPm2eUv3bIVfBHlevfbNWcz6i+vfWzE9xHwS7UkV6IYgG6u+c7V2bGpJqBw2H
	 ztnLxzjyLKisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52109C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452125332.8488.9697741527059272006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e6c33e366f451331a328bf906c19a83e352ddd69f1afd2dbab33700ece387e
Date: Fri, 30 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664521253
