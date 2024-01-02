Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94910A08
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHc/kTaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8715BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704205096;
	bh=nk07RQyugIfKI8B799Jb6CkfvN9qDbkzRX10Zr/zQrM=;
	h=To:Subject:From:Date:From;
	b=SHc/kTaCnEI+zIjF6Q7IoP2qpJCg//LVgidrgC1+iTwoKYFJ8xOuGc/qPew1mHi9B
	 RnsiJUF9U2eNhFsaoMQTZna36cuJvTMHxiY0W9W4BnKn/ARTyhV1L4cj9OHpu3CoEW
	 +dGUEqC4FTshD7rAfuTwKiYuDUAyYTRUn9udUyAse9Z+UzNTIAXI8IDDwvs4o3iM2t
	 +eWt/hKRYYBPbTXyOQFMjJ2B25zKjjP6KbEjFk5hFU4b4GBnsZzIr+FEtDp6lgkG5Q
	 9ALKeO1J01hprWZEAjHzKmkW7IsJVcpU6vjbkznXnZZibm/AtLUftSd3U1IWOoeQzJ
	 pfEhzvq4RMpfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C3CBC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170420509643.4941.14934451670300878049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5602833c016caee09599186dd723a38f37118cd575957b15387ffabc4888319
Date: Tue, 02 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704205096
