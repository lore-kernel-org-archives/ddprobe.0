Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B253323C0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 661CEC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665392453;
	bh=rorVLgAzMkDnBi392d9fG6AFybOMNmrlLlvqrZsa/lM=;
	h=To:Subject:From:Date:From;
	b=QChxsMsBbWZSZOZpZ6pwBcMxSr0peP+IVDbZTgIBuTKrFrKaxP1W2KmaXgUUm7q2j
	 cSJW7MDbNEBNTHtBBLT77rqk28DciC2PQE1npm8PehpHr/QesBmLfoDOyVVwkyNSsG
	 v01G3ZebBL7TtRPRgGlKu7Qn6lc0Q+Auck8OBazgJEYcgBNzdd62wJES0lIZDNvv00
	 dgjNcq1++3+WSy4/pPUUZdTgvEiR3os70sD212mQEqEGRJ7N7QKjcpdx0+kc4AOxe/
	 w2F9uOJGuubh72+t5OPYHVH06HX19v9oSjOqaFy0dznFFw/q4qH80t0Q30N2BuLgg7
	 9GpLE6A40T0BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5140EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539245332.3488.8096704596725569906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a467721b374782c14d27085e1bf3c79b454a17748ceee8452e7b974d1119a4
Date: Mon, 10 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665392453
