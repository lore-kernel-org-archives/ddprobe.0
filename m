Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5EF33E7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E4FC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670448054;
	bh=MybwdQ2hgVoL7ZhzR4lLNLuHplPM+JEu9tpepmEyOzg=;
	h=To:Subject:From:Date:From;
	b=eD4p8xSzCTa8Ggo3K0/jat6rMGEiUufUHMFu/ghBvaqSey6OzvK/moXpmK4sASFgK
	 fR1cuc4MZthoe0SLQaIELgkfrgAanEz0AQ502K3d+2ZNJrfXdu4uI1NifK5ygIOicm
	 U35LV8CuInLuMEXqnpBzhzX4qPpQnI+o0lCRwiRZn0gJVVJ4ucsWHdSH/+k3Enjbri
	 NSDfBrwlx9aq/W8l/prioPPgRSDFP0wmJ5RY2vWBXANA/WYIbip97FywQxmiwixwVw
	 qza+bWI9cUlSDuJuCyVxhXowvVeJKlAO7xVcN6r7sROR1aFFzMByV/HADW8d+atldG
	 2f1lFyjBTJtlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60067C63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044805438.18299.5351170447612279459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e7f9ad822597c2872846afe4164655e4d08a27421c2f3ef675c45cb9d3221c
Date: Wed, 07 Dec 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670448054
