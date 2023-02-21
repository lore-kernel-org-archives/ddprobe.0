Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B148EC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 18:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07FEFC4339B
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 18:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677004206;
	bh=n7X1Ta9AB7YOm/aVAM4gDfruuwoLhQgBiPivfLBHXNs=;
	h=To:Subject:From:Date:From;
	b=Cw54SuJ9iG5dPUg+KzeB8o+QE/BNOvGFk03p00r+WZEgOpi7/2NutWsEWGTKDmKAL
	 8P8k/0DUVNftIzc4kvDVu2XdY1VMCa3NYbDb9ImzbDGowtLiI/RUIrUSsBSg5sWW+I
	 R1yHB89J2s/nUBGpudu+UC7/CAqr7KKwfrC7IXiybhuErjBrDdPteMM6E6VP5MUCLL
	 tQWwBq/hzYPEs/kDite3S5erx1uFkeAS0FbiGVmTGX9j6xqenMT6It/j3k3xrLJH7S
	 R3Ltaor/Yur/8LefO6aeBb4SSuEhSxY8V6avkha0oqK+sdU0+VCNOCGxt5iTp39hat
	 nlakjBH6nyqyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9488C636D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 18:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167700420582.14105.12438810782948285236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccddc67c84aff74ed7bfa503f663c1ffa58e460c7101fb1db272438ae56a0a3
Date: Tue, 21 Feb 2023 18:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677004205
