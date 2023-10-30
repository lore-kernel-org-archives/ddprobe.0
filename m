Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9AB611E
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9cfzWoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83483C433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698680296;
	bh=cdwf76/4FffAQI+KpfGw0caNoPWcWnaUedx51dLHPck=;
	h=To:Subject:From:Date:From;
	b=l9cfzWocmw+ZttQLFlToIozofW0oh4fFvHiRGK1psvLSHr31fsBMg1QmvGuyz/2GU
	 1nGEY0PD4NvZNlTAk1mycsAP5rsEzD7TSfNwhctT7lN+Xu0SfZR5JkEubb+a4SjUXZ
	 jV5HH32j1C7mL/fPYzAYXGsnAsPeJWjOSuJa+B25AA0tH6+0mJ0hXWiwEi9ki+jw3I
	 kDcdrUdkzwDb9ZWeDudHfj71aV2Hvv34p+ROEMn7EcaFk2gSzkxc+hWz5muFp0A8l3
	 WYpB2VmowfxOcHvGtyGHdt31yHld3zGzxQQDtbpqK2wd2lv6ddnrwu6RZksMpe4D1X
	 8vVjHMnv0KacA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639FCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169868029640.30249.12500606813807292335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a4f30fdb6dd7566aa2fe81ed39886031807f340938855b1b602b6950a3b54e
Date: Mon, 30 Oct 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698680296
