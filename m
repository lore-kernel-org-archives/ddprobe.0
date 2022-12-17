Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3DB811
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED3CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671277887;
	bh=+uW/xR4+Xgmzky5QMWcGFHRBHkIFcOxnr5ZxU0CwLpg=;
	h=To:Subject:From:Date:From;
	b=PvVdybgaPER6e0weF8ZHgQWCJVh80uHYRXoIKOVW6MhPRzwll1EZVMByPeuplIagm
	 oqOS2m9u1+Sd3HNIKukq5Lyn79x0onrk3BPcVv1Trx79A0XSrpDr2R6qBIZwe/ele2
	 +xJIg+95SqvXbX3rDXACvuy4EH7PdGSyWKPM2L/wLxuZrApSedo57zxvnqZgf2J/1U
	 a6WC/rFFgQ+zqG0U+pfbX/a5Ucdzr45996joIDo4GQH4QWFLZx9Kg7S3402kYpNrf6
	 FPHqOiOWnuz9yg9y+mjERFRCzb4LplxdNxSV3jtujh5O6sUc1WUNj3u4bfGI20Gmjj
	 8dp/eD1RtpNlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 800C3C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127788751.28300.11053839402445139191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6c79b30f9226fcc49213ba19d91b0656ff198a7c0449084d2950fa6cbdb1e5
Date: Sat, 17 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671277887
