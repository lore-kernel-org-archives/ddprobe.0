Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D579A956
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 11:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE226C4AF7F
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 11:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695297308;
	bh=FoopC0uK2IqWc114a5m3nZBkomYDiPdyniuysAr6Uwg=;
	h=To:Subject:From:Date:From;
	b=L7T9CgDUlnCLo/FjkPQqy2KyOoQ73jeKACEZZ1B2iVsPmlSCNQF19v9jdnyqxbX7+
	 2CBm45fZduww4Och5/iuDMywzb2OUtOLrTfp9k1eSPP+fgCWzQQdjTFse9fwbISw0Q
	 ZxxPlgnAS7PXLTGfOVf1CRh6xyi1tykdYQ5CAdKfpeGpqXn2kVEeCmUHIPcSUiBXtT
	 hRtVLj/dG6gvhfaa1dJX0MVEYBMc+Jj83cSuwPUbec+/CoFE/sZwRR7ntkzFXXG7di
	 A+UtZo71JfTCcyso9FOP0trXZraQ/GghHhEU92yUbSJ921ZJlsZgy2GUQjIRJgmSpM
	 GF4Ge7ygJRzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28C6CD4933
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 11:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169529730865.6506.10115279524516721768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede3974038218b9e99ad87f7cda6190d3e4d3bfc30fabe7b262cf727b611656d
Date: Thu, 21 Sep 2023 11:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695297308
