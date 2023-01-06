Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D313F621
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B22C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672965087;
	bh=QzHjoJZw4pnlzoGy7DGkhczyP+5lpO6W/bix9gOB6Tc=;
	h=To:Subject:From:Date:From;
	b=X/lRohOuEd40IVyC2qpICeyKJyeBVibU80f8I5CXQFtHI9uHYIurNVoGU+cBkTwEa
	 3ls0f+rPamUPTX86My8j40uqwXGhp1AjWYNhKkn/DJubFvfH/DsidnKnqOZU1sitK7
	 iGv82lxKsuZhkPF9GszgwtO4832ZjkkmGp2PPTYVouEEL7A0RgOue4xMVkzUW+/EHx
	 Z3Gd88zngdYer+QMjlZ0Kfv1QbvwCixKP73CbmPZVSYEOT7/j6It063yXck0DI13rv
	 uWMxc0wplVSf3KRaXlBHGZAh+Fotd7FVHslJUwKi62Qgr33H2SOKGEW8p8mgA5ONwH
	 2GC7hGNE94PuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF16C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296508737.16103.4732016899252474840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fdc925488779c2055e311b494b9153202a4424d35414103deade59547e7a7d
Date: Fri, 06 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672965087
