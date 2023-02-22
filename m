Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3861A23B3
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 09:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B0DC4339E
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 09:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677057665;
	bh=tyjH6BdI6N/DXv+9ptiQ4poff5859CWwdtrZX0V1aJw=;
	h=To:Subject:From:Date:From;
	b=cpbOfxudRGcSckCwtsB56i00Fd0V7rRvBTptsNnUARsxeVbJC+hGOg9jILsVlpK45
	 q2nxzjKwL94LH9faE7CY2n21PRVms/QicxWUHI02PQWW/XdBnhKmknOOeEdlWUJdvu
	 IxX1/BPIvlqgKF7pdJ0IQ9CFwliAnCXpu2/O6SApzRrs8We/PiijIDuVogRuw/u4pT
	 o9W1cQtQNYifhPilrC5ZgjO4CA8Sc9LiwOh+FFzje0ueuLvevHaFeVngc+UdddnE7q
	 PXtX/MlJ0shW6hC0k5DQftLrntG2ODwVvtG3VRhCEB8/koQfQUuscfrn1cG2XAq91k
	 NvTdiGFCQxn1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84DCC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 09:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167705766574.32078.7192658441859602398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead69c13bde6ab34997781e547e328a682fb4e78d3fc6dfe334ab3263987d210
Date: Wed, 22 Feb 2023 09:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677057665
