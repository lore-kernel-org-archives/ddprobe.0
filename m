Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF5041A97
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 20:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF89C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 20:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695242108;
	bh=vEfSwTf6OG05NTtv+zSgoLjiYPEFHPgPnIJrvhaI1lg=;
	h=To:Subject:From:Date:From;
	b=ZWuFh5MnwcxIDMHJZZ2q7Kn9TU3p22It3SrQaMpObaC0adKWQA+CUbLs9vOJjpyKT
	 3C2Z34Z316JeQJkmqcMJDCVE7gcLYTKc9opFA89TnaKkRegoq5zbTmpHH5E3CVu70T
	 U7bQobKBgtCeDkZZx056YFOYKwBx+SCI9YDUcA1vSXl+jj+tOgmXdVaLGNIck4cvUi
	 d0yvI6Mv5ti/HfUgrhqERLU89PCxHZ3M3wWBIcGfzSEoms7u+fiMezngSJvTTeIXnJ
	 QHPAyUtY/qC5iMgfTilknd+yCG+VX4paHoRJQkujPna/ay5PkYzcxgYFt1PxVOzGBi
	 slJ2+sxrrJe9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A2AC05022
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 20:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169524210866.8577.2842541334882347632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fa9e63f83f4f58632b2067ceac13aa7bacdf9cf87669ec48696e5f63b452b9
Date: Wed, 20 Sep 2023 20:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695242108
