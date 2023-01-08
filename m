Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7021112
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86558C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673149287;
	bh=WxtSdgItKSHPzIFM3GBJlSPn/FnCQJRm6Vf3LMZbuGY=;
	h=To:Subject:From:Date:From;
	b=O/jl+EyM75PZkUlLa766V2LhvxQCjgqye2aVMCOGLvsiBHvdu8gRYxOOPQnbuxbrU
	 2CFARO0deHFTt+KaNM4Ww+C9nCO/xiMexHqgXQi9sgWGYNaeQ2vuKhpjH3S56egU43
	 f+Tvgz0x28XSkun4ZEiF+YNed0cPnh3opyPb28dQtPoRCgeeXXw+PHOssCACJiN1Ar
	 BFL5Vk5EBVPXuvWErqJU+5cKwSuvQc7wCrXt5sAQzJylpNBmDnbQbBO5tDf2Q4CyO7
	 Tvi++DDPWsi7cSy8ctTno78PJX77PRwR0q8KwExqjhj+K2bsTyW2W8XRaRXwWndevi
	 y0MrpOsNdxrqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69862C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167314928740.5324.2008789557318887835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d2ec8a3f9e2c789f7fd7fc47f171ce5d06161c3ac3177db83e0006c1eb9cad
Date: Sun, 08 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673149287
