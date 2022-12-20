Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73D44C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FEA5C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671552087;
	bh=b/+JnusKDRkcMcrkJ/KxeAppZwItK+FEWfMfTLp9DHo=;
	h=To:Subject:From:Date:From;
	b=Gg1A7OeA6yd1nK+HyzKO9h0nxvn+hwl9ju7i82oC7iK9vEYghUerhT605LRe/ueEU
	 dCd8DkLikEBAssIoYBufJ9B2VVRwcApSFY+uiZVbGo7d5w75TZSy4tx5njkCSiEyrF
	 GNpHDdEPw3nL2XhSH7EF9J0qIspX3Rd0sa+ivsrU4DfN9e7U33MwDOm61EpoJp2mOv
	 zoag6HJSkp80tYOx+tzVPeXT/jVdYzd+kjnUtDFpW+XcPATASClsU89lruUiLjYe7q
	 rvuZoOmuyb+6MwQBjGa/g5VGhSWt4xsLODJK4YhUI5MOkvhZzuwMFJhCDZkqCyu6af
	 TxBp6ueHtYLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A81C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155208742.8544.763355297980815414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e44e94f1e2b3cb6b01ada2c47e67ef9390fecb23579bddd0d51216fbe2fc74b
Date: Tue, 20 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671552087
