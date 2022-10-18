Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6E6EA2
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C1DFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666060254;
	bh=HbvzpgXPnvPFv/CdinBMJ5drKt+A4zRQ+UblYsteWRM=;
	h=To:Subject:From:Date:From;
	b=KTt27edF4FiGrJJppNgTJAWuiiX5VuPfpthy+frrbLNmNJOcJkoFEbMU29VVmPIng
	 1As2XGjSmFLzYfXKciM2Rb/WVNVcnIhodvUv4iyMtIyZ7k71N5djJ3dbzqmkOpX4hC
	 38ZwifqMTFRs51Rp57xMXtC8V5xC0epCK7adWPXCNl/XDBzWMHcRoW/QVhj08UbiY8
	 p6lvTmuzsRFmueeqAqneX/5qc3g/jUQdGai2JpV98oARGpht2RcCgToz+3KaXQ1uoJ
	 fcHmpyDX/+HZGcVvEZ5I7/aSpl7olvHhwnyX+0ZQ6CrStcuf1xMc8Kj7nkaSAAw9Nc
	 V/yEpjqnsIZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500D5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606025332.9090.9506540954565411341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf047812a7b9ce7bbce7105adcd495d922c1d4bfeda73ee52d2f94c6af01e3b5
Date: Tue, 18 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666060253
