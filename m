Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA6F7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F07BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672996887;
	bh=gzBohr1m5JpKAAFe0oMTkIzgP2JLdMiuxXyWZBQ8cV4=;
	h=To:Subject:From:Date:From;
	b=VGLbKw9FOPk/0FUDns2Ht79kxV/AyIK8TJpoLx0yFM+Zx0N1SGQ95RllLwQv4uSIO
	 6+NvzuhHqIbZbkLPZBg7mJEDh7D0PunF3AunzZwVNm9YtjVRq8+1StoGyV0fod/waO
	 y4i8qGqeeEm1s+L6FQwg8JyemkkCChWior4oQ3/PRPqUjtygeSCu5dgAVuNnxW2WO/
	 u598kB6c/9593udfF8S0Hk5L5MKaT/hKQ7g68Iwkexm8g4Q1JTdf0RrDnqF4uXlnqE
	 etczMaMLbMhcuhR7sBcOE1wM8BG8+K6me30g2aLQOELWfO6XuyQCSRJxi3j9AeNINz
	 ugNbFF4HyePnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A25DC5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299688742.23952.14366779037889148028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c48a6480b5ab0975b2c9a2af6dba455c1292c695b99f7c3ff95a3fbdd3c4c4
Date: Fri, 06 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672996887
