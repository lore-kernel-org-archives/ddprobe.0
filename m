Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA926AB3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F653C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670331054;
	bh=QvPKtMOr362IBQ0NzrBW7xp7NjAFLJeDg4QTQizBqYo=;
	h=To:Subject:From:Date:From;
	b=nyniwD+qvoirlBDJLn7NS2+p7CF5orxUNgdMKqHUlyh03inip6I8xzQyygfrnNsxL
	 ys/zIoJ4eF4CFuDBM+UPX7NMoq6UCsmNKHVoaCZxxuxZe6SPwBWJBUfxW5ZsInfBmy
	 CY/v3JJjsIFiz7OpKoad7fmQ6FW8RcFa7dof/SiTEN8IEAUSoqgEEaT+pbVorsAxoI
	 neW02J05OsgAgq51jgk/l8HWmDAYsfO0jYdwuLRojNZ9kFJhtRMn+2RLzyTIv027jB
	 JHjfPLnOpKftUGcDLqffPwPJJBErUX1WEiYV3GvyyOUWeKao/IQxpHXleDxcRygAPP
	 U/UNFUY6vEs4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574B0C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167033105434.19369.18296458114760540501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8676dbea4ef2606b171d193a46f87909fafa61220f9adac6ca80c126d31248fd
Date: Tue, 06 Dec 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670331054
