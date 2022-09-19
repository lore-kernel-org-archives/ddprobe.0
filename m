Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AAF7E4
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC30C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663570253;
	bh=QNaRUIkceTu+gAFW1HCEtiFkSBZi/P4ezT1tnc+81WA=;
	h=To:Subject:From:Date:From;
	b=cXB9Mq0dwMhuU11VGdKB67xmBNLQNkF1KMnoVCMbgbKaqr/SBEOya3tixD+Vq4BUz
	 jlh4aALKxAgbJWww3wH7SqBVFUUDp0skQby6SCH5ubXFieKCDF3vtKr4yebxqGdzih
	 DlzBbfIFpfAzUqCUz9nsBMKrZoE+j50pnEV4V0JZkl/Wn1NIuBZwk6RiQl11d5+I3u
	 +0GVU5CBaW4kAZehNXb+0pdInF8gYYNTNr8Pk1C28tjdJxOwkWfI9GDT5291Fy8qPR
	 N7V/4nWrGiXeXOefXauP/JM8gTxUNk4iM/xdq9UkK0DUzsI/tOmuBitruyKS0E/scH
	 X5OsvJvyVSRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54EC5C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166357025333.17684.9508215231571927409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8183ee5ae20daf6eae42b8b49cd3c598f4389ba80da0294eb031f1b2bce1aa
Date: Mon, 19 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663570253
