Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E247F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA31C433B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662916253;
	bh=/RFfCIeMQHeLgMNHuQEyUnANN0j+oEbmZoaQvsAS0g4=;
	h=To:Subject:From:Date:From;
	b=Ev78SLpmhexN2pshaGxJJljaJ5WF/U9cQosJS7/5dg9OEU4/cc7XEw7VSQCO8CZUT
	 BOdQPUTcCSmlCUXw1tbTg4arsCAEf616E0fNlRSzsjCzW6tEI+avj6SkANlDv/FCKc
	 FA/wivig4NNqTK2XGiJF6U+V3gdWEW7RDkRSXCEGI0kbKSLcyR9vtCA7sZD2t7l1Xp
	 Y/7poFyKsl6BwwoTxWB2gnK9lsL1RjITNiYKeLZOU0Wq/uqFlksTSXG0MqrG6WMBQ6
	 ed47oM3npWkQ4JoXuC7HKXTbzWyLctEcQDmJneFOnw51mkB2yeEV1fyrxyoKmd5pH9
	 Xejqc5//6JokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DE68C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291625331.2652.14861613863638326933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20554c2f6a61863614ddf391278c2b172b8b9cbe31a13e3edfa33900e97eff82
Date: Sun, 11 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662916253
