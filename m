Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6404E1FBB
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 20:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMGMqQgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7885C433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697315228;
	bh=ziXnvtWpB0ysD9yhCDICKcGMn9fB7JBYTsCWOz0yKlU=;
	h=To:Subject:From:Date:From;
	b=pMGMqQgDyAbCQjk1Zb2Ad0It/+AVZ10wLGb4BliQcU3HM+SFXDwtzHLNLPmfGSnEK
	 6aLZIr1ucS+wGlLM51vg8rUJOd7haKJc+DeyqiphjYnYX2KlL/oS1KoR6xVrABSJO/
	 SE5c378srkizYAFy9LUGizu+qoDTcZAV1gc487Y1isPqtfb/Dw/PgznvY37r54i942
	 hiQUnDHwjN7SS6BFoV2INLy2Buz3hyU7c67AYiFqSqe/6xYPmn1pFzaC2EW+nUvqzZ
	 U9Rz4uHCSn0WkKLCp7uAI88jM0UGgR13oWznLMnYg0i8bG0dnql6QXHy3HP/TSzR7y
	 8x+MwYswllUvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A899ACDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169731522866.22358.5408977304554483695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad78ea75648369a3c0454a5c237f9a066a94643c5207e9931ac627af6e508945
Date: Sat, 14 Oct 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697315228
