Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E153A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFA1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661788252;
	bh=3rgAtF1DIxJBrbw5yTc9i8Q8SmnrxMG8WPcpvDNN70s=;
	h=To:Subject:From:Date:From;
	b=sVYAE82cg+XGXDnhrzNxbTznhtDvCETfky9vtquzOMhtmbAmSLwF1WvWFC0t3ggHP
	 nND/ve+iPLOf/2bd9ZWhPZUL3tJaSUa1VOqyCjkgNTH07elff/hemwFBmZsQrWyk2Q
	 w5vuMY5pfBSKOqmm6pv2dQTDgJy9bqKVl/MJ9U7b75o69y3IclyurJitibcGsg8lXk
	 Kbi/ARX8yaQcxzaNSE3DT9Gfa4RJk9+BSTZKjEOtNl3cngotZPBaPQrm5CwJ/2sQte
	 yhuxAO8LfRAz5CdQ09VGDFpQQopyJzdyPQFU3BV6+c13TTG4zvz2DkA9/6lhXcNlg9
	 UA1Mcy5lBqBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6284AECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178825238.32144.11283417513392679068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa3556988338eaac19ca855b834f07c2632d2ed828ad9312f0210fd7d752831
Date: Mon, 29 Aug 2022 15:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661788252
