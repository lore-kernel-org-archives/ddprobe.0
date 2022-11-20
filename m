Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78494428
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E05CC433D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668982854;
	bh=CSrciIpB05pe7v6aPF8kEUirhLu9K9Io/ZPdxkYJJlQ=;
	h=To:Subject:From:Date:From;
	b=t4BHKhuC7h2oqPoTf2Kt0nwiUd373yNnMVlqIv+CDxoV6L3dnzrUrh/HY5TAqJSff
	 T1cgJjI7Ebf/T8lGFqnIK4gQE8aMioLdiNxfOAMqZN4MkRzh2N1tepThz+sx0/N+60
	 xE2k5eOZDIW3d37F/alAFNehbAR7y57BMcjhhlEMqzYsTzheXzjJyasx7ncLy519hf
	 njmfwzkpf4inAPfjc71sq05r9I5mJJTjK9jr4iMAfxjnY1U+AkVbKSTrql4jBvz8pG
	 bjtmnYkFVujmuRhSWq9diJ8FHtRacQ+h/47r8ujcuDU2tee0gGT6c5seATsl9cUr1G
	 tatiAwHhCtk1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F41C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898285432.11960.10197913288064986966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000a127cc300dec42ed694c48935c3f6ab913e95cb230a39fe8e0ca06ad55fba
Date: Sun, 20 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668982854
