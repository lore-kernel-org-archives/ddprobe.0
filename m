Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22457B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FABC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672010487;
	bh=k2BwOOkzB6PkN8yMnwNBOMcTxObN8PwpPrNsTsJjVLo=;
	h=To:Subject:From:Date:From;
	b=GW+sN8xXd90+d05mudEpeD/+RnA6jwkjv95fcQ5G1ZEBK4QOapPWvPKjKhBwDgHsN
	 eOJUxVBr6gG2dTQtRLZvFsNMm3R1EZEPctAZTKjtRLXHSLiJhW1yka/SfZhYMbyRHI
	 7eSKyY0Tyxdiq95a+BdZqyPkUnvxyt0vPVDAM1OnVAWQHLIF5ZBHgxz8gTqvCIAaQE
	 sWZWMUSZTKp82UvmAuXZA+TpHG/X23S1XzC1AtzuDWDOIwWBFxaX9Mn34HLdOVAEoc
	 WGkTi8fJL/+LzsjJMt/pMRs/yEN3nkMnNO0bWxhqwQHTgO9qb9p1IiMZPzKUnWaFCT
	 Ul2mAlGxfBkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB50C4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201048738.22242.12655995670716190229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d07a26e801ef8ceed87272333ae5e6aded76fc8ebb936650ef21230553da79
Date: Sun, 25 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672010487
