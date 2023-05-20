Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A48632
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D18C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684572545;
	bh=XLj9BWnozBuZQwGSZe0nzhiW8GEOHkn8rNI8T3UdvP4=;
	h=To:Subject:From:Date:From;
	b=O05wE/ixUI3xNnliiwlKgsbzcXQ6Fydz4Bl3Ar8iPJceA7n+Gs7qGgh1yQRRIC8zg
	 QFq2twCz8sw00KE9UABsio3D8E195qnYbDXpLurbAAe1Oxwhi/tvkI2ttvj3l5lv4A
	 NAkPahNPk9UeTkSXiOUBkW/Ewgl8gQQUyoKx59btKnYU6Wla3Imc8DxSR5V7idUXc+
	 RZ4n3cjLSJIm+HUxBPaCPhaAIyXZUDy+/1hDb7qz0Hw89wiaAvokOHwfhyNiYvcLZ5
	 3Z9H4Csu2sUEzjTaWf3oWH2mNMoyiTIi9bQV0RY9FoOJlugM0FojMxueSYiwyi61Zr
	 Qjg5wt22MDgUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63E1C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 08:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168457254576.1717.11586965436475616658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aaa79f8299fb8ab320339cf365b49b778d3b2312ece743f9d6baa059986d17d
Date: Sat, 20 May 2023 08:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684572545
