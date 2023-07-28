Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D3313FFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4120C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690557128;
	bh=am3dfwUDjK0dY/V9SP3Zyr0g3K3JKJzoJcy2GFZIUvs=;
	h=To:Subject:From:Date:From;
	b=TZnf0zSzDTpezJ+A267g9RlQlDWjK+ZDCrLAlTbxIQMaLJt4tt4UkZz3ZyIR/FY9F
	 Hovzfz8NR0vpN+hlKpowCFvVsSOCwP2IH7teJLkGshDxNE4sfiPYjUd+84aA/lHy/l
	 HBgJ9LfcUJs7Djb3Tj9fdIB4mQK1pDwsj091w4nkn7e7RRv0EmNMnBcfeeb1JJhNnQ
	 ae9A7eY+YQgzh33d+6ihbUS7EgO37+D+RHo9AXLvz++/49A6gYERRfBiPtBhyrm2Hf
	 Fs4xTN+KwXgZf80mmcxKZ9tjzWprad8QgjhbeEmnJWG9UrxRxvbthiq9XJkpB9u/7+
	 LN2PRSDkKA/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB6C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055712868.11863.1832659982939837154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7792a5f1c196b02dac2bca0a62c76428d8629b4842d2dfefc376c76d30afb5c9
Date: Fri, 28 Jul 2023 15:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690557128
