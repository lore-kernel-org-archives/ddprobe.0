Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4825E2565
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F11C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678776486;
	bh=qnYlsEHtbxG+klF0iKUKKGIF7CcB+jfv+F3jBGGvTyI=;
	h=To:Subject:From:Date:From;
	b=eq+KcCTJAbMOdTstnn7yab37dF+OYiYKLflDwdDRrQtVhyYM7794NxIfNg5pnfwPJ
	 +mio2eQkEZ9dHrturoRTvj8KGmkDuegR2qfdwBI+vgAv9WbE3pzMFOfvvVTwKT7qFZ
	 aV1URAGLj7Dy/4kiaolOXGZvaYsTGp8sUyVdRryhQi1ly+RhvCK+Qx6E/NIa0Nc4pr
	 hRBioOxv90Fgyg5V1zUejWyLy09coQ2MvSbmVTzwhKjfQiO6mMpx90/LHX4+S5nvkA
	 gPZajhd8+BG2YdICaBBXe4rUtDF/t219WgrjTwjblkBcr9ypmwB5s+bJ1heRyf5oql
	 UkamNnMdDfE5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF276C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877648577.14850.3698923504811852897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1ac603528308407cf1b970473aa168de92167a92ec8d144d59885992d68e73
Date: Tue, 14 Mar 2023 06:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678776485
