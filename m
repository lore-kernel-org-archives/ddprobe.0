Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AC77E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9295CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672624287;
	bh=0egbL863SK6DVceD1aFUIovtlP2F1kMrdbc4yXt9alg=;
	h=To:Subject:From:Date:From;
	b=rlasx2Z+HMefPfCXRNYz1glaklMBpJTVPOlNsQy5jA+J1I0/HAcr73y+Iz8eCsfyP
	 uK0bxhLfwVPFATMi/CnMH40vrwHjCsAOjqaiz1d0SXec1to1EJhsynKMJIhgsMVoKI
	 jllbew1Xv5lX6yk7Z47B6nzGuDon808wIlH8IRDhra/MZtN0YsjeEriVfZGCCYs6+V
	 BW12ibGeMGrTpj3RxpYWGS+Yvc92BKQABD0j59m7NbZ3adInv+kDUF0EMNi2RioLB/
	 //0TsL8eFfUn2ziKqlpuawFAYdZE5TykHekL1wGn6NcomhVqCQZdXqW4B0DyzwBUQ4
	 ORM5xcbz3a8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F1D4C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262428742.23065.1840929955689337723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251197a38ae75d2265932c343cdb768f99f14d99e33d0b4234f7a2b7497e7296
Date: Mon, 02 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672624287
