Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6294817D4
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 03:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C84BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 03:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681876446;
	bh=gMa1VGMmI9jjkoO6ZKLt8sE2/0fMqd9/jlFUfPStzDs=;
	h=To:Subject:From:Date:From;
	b=T5K2jO3NaNNVi1jRTD8331Act7LWE7uRkPRsbuva/+gTFFQxj5jttUxZ8OLMeXval
	 4DcBTSrbQabOfiXUv6oLPolRu4DIv69R7JVep87ODnTTUcV9k6zg0Rr5WFMUfbkR9y
	 Ciqrnn5/uI5c9rrjYmZOY5VGh7qjt7c1RKAV8CGRin1STELuiLGOxf5EzkMp8ti7kd
	 rgWWpidSSAoPpDrAEjqmqP0S/KLX5eWPS9wzd86UzrvYi0gryFkat8W7edY6LO7Aw9
	 iF0st4J1kYsdP5oq8XwglloVsFGuF4Ge7UcNIxHTl5JzYfCd8zFlZBQpgf1StiQruZ
	 UwdjUSBQdMs7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4488C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 03:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168187644585.27709.3726785714845983514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dd6e57fb5ce5f679d3cd078cff0216fc7cb348f1e9ec9ac19ea9b8d8b3dc84
Date: Wed, 19 Apr 2023 03:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681876445
