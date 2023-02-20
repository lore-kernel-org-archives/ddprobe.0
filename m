Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5230AA3F
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0C1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676864285;
	bh=pSq6x7rHWXMOhGuAkBiClly58qhqjGZ4UQEKyZftDYw=;
	h=To:Subject:From:Date:From;
	b=HrHT1+c8a410zwXB8b2cpMRgoHpAVdsMcCkEYyf6bvvd+AMh6A9M4Lpa7N8tErjek
	 zfBf9DwVXz5bYUtMYJUSbbfkHMRrNETVQbhiApSlFjVPTn8nAGvPti33gzaEn+rG2g
	 9mtyaw1dxEWQ+daE5DR6r14VXONkklrKEeffzOVvRZke2+1rmZWz3vuXvQiMcG3Ui9
	 HxUeVF/iiGuS/MIyLDxPDDU/qqk9NaZVeUSfJ1F+2yDIfNE4TnAYtdLKFNKnCLeUp2
	 PtzVmcnqLFLJHSATL+Pv6fOoy6IpxOjsdEYzYIYh8rSBZoh5SYtLWnCD38snCy3NPT
	 6YqtSl0fee10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE0BC05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167686428576.27307.13672638472961164107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40a071bd2d68a2b9e26143e30a6410b74241c70cb462fcafd54f7e37cb939b1
Date: Mon, 20 Feb 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676864285
