Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CDE173
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC424C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673137887;
	bh=5LeZoEIA46SCGUlW7Rwqxvw+zJNAdQDfqAZE1T/HJlU=;
	h=To:Subject:From:Date:From;
	b=JthfbI1GIDoRPcAdYya6zM0DEKbW0Fv0IaAATS5iWtHjEFeAH3wf8rCODhhf8Rt4N
	 SJC2bQCU5k9+3eb+lViOIBV14P/shIs1PSmZwGxCWuerAbo2cuoVdd+x3d1Zol+30P
	 EweyGwEZ8aYKZ5VSlelhE1PjqK+zsonTYqPK0LtG2+K0AghgdGjq2k5tB+q4gAM+zK
	 yfAjZKUba0kWAagHHkh/Q+EfZnK2bPmGvlI9bDhm0Sylb7imLc1n6CwDlngyWPb7+i
	 +yFM9aRtIrz6tMntyjJV5rvTbXWrAViaQTh6bOiwsGtgldgh2ZZKsC3AlCX5Yv4vaK
	 9bAR+q1jfNt3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81AB8C46467
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313788747.23415.16778575195490554403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3024ab19bcbc0646138376661a31220c3e8196a59a483635061a98446eb9df02
Date: Sun, 08 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673137887
