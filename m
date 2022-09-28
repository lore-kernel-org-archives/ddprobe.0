Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA974C62
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F05C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664390453;
	bh=yhTM7JosllZL65Z4wlTZPIV2//MLOq7nnybkP52hSEE=;
	h=To:Subject:From:Date:From;
	b=j10QI+r6mpSIoYpgDHe7SeR5/M1qo7VcMc9MD+VKs1b9s5vsTkZYPAfO/ojtCuDz0
	 pnJvnLqMzQvcF822DkfJy5lN7PbTYEXVoYvxn2wZU/4xvlzBybPBOSVxt2p5QcNfnt
	 id7Nr/VjArRZTJUs2dnIFWcguj9poDL24deJZCapC+lFDht+VdYrGtV3baaUxBcru3
	 lgnn1POQE+eg2IYYQ5ZKWkJlAtU0KHRt7eTpuJzcFXAEeVAFXLILNLp/EuXrRN0dQc
	 I3KNLjym9Vp4mEIqjnx/SUXtnxVknQJALtWYykG0MYeRiVYKQVwWWGpj4HIzM/OT5n
	 HVmcQdJ8OfoiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1C9C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439045331.6507.7960496764901414331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fda8073128c6e7757ec06ae58d88d846d4cc3db8997d4ba2579a98c6f369d6f
Date: Wed, 28 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664390453
