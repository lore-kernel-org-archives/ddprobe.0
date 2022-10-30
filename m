Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C3D191
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718CDC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667112654;
	bh=cD7DKLssMwWealHA0GTrqZKWOurTDP+GtMkiyudN20s=;
	h=To:Subject:From:Date:From;
	b=HsY5KtsmfOZ8MBlIcp9nCJMjcN/mtvf/j1XYp63ld/4SbqWWbE85O9UotaQ2jr6Wo
	 RLjkr8vTfTvlaX+maA1NpZCLT0jZVhOP89y+hAfrJEkMTZlWmhw28Wztbm5XubIleV
	 Vnwh2Onj6NA71/y2zlrxaBjlP5uG7wzWkHGiMyz6quhYX7uIkmq2WsOtUnVDpktoGf
	 IlcNzcLy74sfp9ODp+zhOHLwW4Nx+88nyfEsOCcNjucFSeF/DFly2U/D3b/1yQ6UBN
	 amGLePOklLO5j9izLeIj109zXKt6uTbhU3plSUQSUfDdVGybyhoFs+VgKfL+M1bmDP
	 oprpPNrZOHG6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531AFC38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711265432.15917.9868931251637977880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd2676017985f45342c3fcec0d64272cff1f3ebe0811709bb41955efa2d4871
Date: Sun, 30 Oct 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667112654
