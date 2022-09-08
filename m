Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02E538F
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CACDC433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662655253;
	bh=hqurCFxRdbCdQW8KeSg2/v66h02KxzcdpaEdX/efsAE=;
	h=To:Subject:From:Date:From;
	b=tqwby4PYmezC0MrCxxBEEcwFw7RHOTfRR1GUgWCq6M+TWUQdyUL38xXcliEZUyaDB
	 Fsy4Cs9PWpl2c+5U7NVA+OxdEX4jYmgHFaAo1PRP2hxK4d+VNl+MoRUtU7F6rgntHt
	 30Ej3GVuqXFbiIGPbGZqV3J4z3mJIkadaWc6P+5xVY13K0qbYLvBbWG/ozqHLcgjuS
	 wFHUXxXd7DY2qcj1FSteEJLQKui27TML+Cj7H/p3rHTBAoYBmINZ8nU+KpfOp9VD5A
	 942nmIcZ4lIPU2bZcVmG0UVP8qUHeUP8OJQoN0Jk1/x+hGRswjyq+FMQUVfWpJw3MP
	 ZsZZYxs8Qsagw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B6FC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166265525333.28970.6689072320580146896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848782974c3ccf51cd4cc14f211455c3e523f80fabbd8f8ac4b70c35e63cb057
Date: Thu, 08 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662655253
