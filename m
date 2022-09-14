Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DFE3FC2
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A9AC4314B
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663170053;
	bh=AviOz2oFAnrqbF3OXlK9f2wFrczO+uyvllxF16PSfxM=;
	h=To:Subject:From:Date:From;
	b=nJxIaG+I/MQl7k9Vw7oDY5juFhEM+oCanzT6Vjsy7v+DgbpyV/fsx4OzK3akkqXVG
	 dl0r6TmxRXeRRhCgHo7ldDKv9OGTzNDpwPJOzuFgRU9dILhITxvjTMjB59b7nFeOrZ
	 hoGxNG2z+/xYefUpejyOaPSEusuY/sU/keCL69T+i01WJx3+WLIQX+FurqN0zI/GoS
	 nt0Y3ohY4tc9PkgSGNufcO3RnpDxbcJFKLtlDJGVHa3a1Snu8FNUC4xKD/PusUqVxK
	 axSgE25a02ucfZOZyjON5XozMlUR2odXLrRMdj9KVv8uMhjVlaPW9lgl5ZmCiqywUl
	 Z7deDbcRfF+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B29ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166317005338.27348.5432738450132811234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd776409b77b0f4044182eb7ae1ba8175f2b1a1ca0338d645dc67ff36ce285a
Date: Wed, 14 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663170053
