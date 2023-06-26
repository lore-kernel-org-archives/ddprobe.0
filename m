Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527AE111A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C39C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687820588;
	bh=bEsc8K01Zc5SAXDt35lm8TBDkLIYCF6lAR+KDAQM8XI=;
	h=To:Subject:From:Date:From;
	b=icrVd/QiizyPfP7fIZqRL+YDeJ8XEVfcizeeVkxC/iGIElayot3s1PrpfGoSogVaP
	 6AOcu8x5AVxahUvDGTbS+Rp1MdEDc9Z5Nguj1AMiitQC/tpLaYTfZUqks9wRcFpzZP
	 reuPljaSX05dwGYr76PLFs4bFU73Y4u/XxKcDSWAxQygQS3IGtAqq+KA3HOrkvXvOp
	 cF9ERf8n8vfnBtEcC/ocnfJnuLw9hxXSmxoWBYz4DdzXkP4PTEJPwtYxjELWwK7Ymc
	 6iKVsweVjSl8dUR8E7OtIUCU0a2suDlXGFjKr2FLQTbHSgOp/qeNVVWTQIkqIZX19H
	 qXNoYuIX/QwRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2B1EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782058881.8389.7803700094983185049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e24368cfe03c8bd8a7753b2ccabec777a47d504b0ed7c807b570d7aefa0e22
Date: Mon, 26 Jun 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687820588
