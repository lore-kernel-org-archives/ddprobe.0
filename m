Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B696017E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7329FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668820854;
	bh=Oqk7LY0orAbybE60oEkuLOc175D0BZIrDo0wN3bVvLM=;
	h=To:Subject:From:Date:From;
	b=jO7v5EE/QiIobOZZP62fDh8hpKGXHpRmd3T2NmAbgtoQUQ4n/jtkG4jocTJAFvUsW
	 ug5aIJJdMosr5PjHMrLrWARzYUDfFKAYKLaeGTkkZxZjzNyKAuvdnTVfyZ91Vv879B
	 N44dU2xRp/N4SuKhBeyT2tGWKMwK3/oWk+WMPS9n1buips2+eYkwrEVjE4hx8Ymz/M
	 vSczw71DvNKrc4ClqloIpFuVjVE0pFdOgkRgp3TfaQ1ei2Dy45P9fcgoCFnvqp4YZK
	 3m9jHNXqpIAEU3bqT8uefuIDyVsgTWt271cCLc9c8lKyXkdvv81gw7WRpid93GszrC
	 GQNeWBq+2pfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E3EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882085434.3945.8369409491070941273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fead0b0e7540b238641c4a67ae7b19b79fc00890bb34ce6516ff1767a51383
Date: Sat, 19 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668820854
