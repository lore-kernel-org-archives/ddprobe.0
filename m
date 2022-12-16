Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D810C371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E9BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671168087;
	bh=2+J2eCBFC527yzXFLMA0AWybEosV+d2PezrQYnOcw+g=;
	h=To:Subject:From:Date:From;
	b=nOHz8iR6hHehRz1kWHbHYdn5hVLmNcTjIWrOYEsgoh/qaSl2BAWY8Tt9ZqPaRCB4f
	 4+UEetmEwZX6MDXY4DKBHkTJm61zDTyBb8brbqkUCEVuIPheVhYKEedvE3mvqX973J
	 HOTKczSpY/yZsvtVkZybLJ0ZXvVqa3OhxZfwvvtk8Vphfm9ldB+y91a2JARyzWZVl0
	 QPC8yvc0nQPHc2AeLYWWwdqWMvfWFahzgeMWmDACgMhufm0th3ux4tBEUq4ouJaZye
	 wdDYpU9L3pFQkLq/pqi/efWXqndiYb2/ytL9Uxu/BOcL2+DqUGXJo7iVimveuyf3zm
	 xnMk9ok4RfCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BB3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116808738.19757.12480790810557074506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689a2591a8498042975accac6ffd98ef3efe6400a16f36882774149d4f3c4fba
Date: Fri, 16 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671168087
