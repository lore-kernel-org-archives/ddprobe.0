Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C832F2F23
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4B7C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662298253;
	bh=+aEx/dIeRNA6YXq7x1d5yQvNkwWHBQIoFaOch/b03SA=;
	h=To:Subject:From:Date:From;
	b=YtOf8PyS+86ZHjTjS4Ryj0PuKhUZko2W3sgJqZwtIbtfvsRNG7V8nMIoVu8+S7toH
	 bNZ0WTc3dTeYDO6w6z+UwEV07GL521m+ti+IrMMxq1/mr66504w2kk6vX8ebwX4dVg
	 gSLJ+ZdyqqAlCFe3zqL2Anecr7isoP8kwvL5H06OiGlkgN9eR1jMnGqzcBXl/avkS+
	 yHNCMFgSZgj7m96nhxWSX5W4wA+0v9ePa7jNeYdfjRyAMwD0J8xNmQqJ6Pq2ZNVEFp
	 Kcx1hC3HpBIB+3QeKbzCV+6QkPPWsVCjr1EaJTaOXSD0nJjzrhXXBLLgqClf+VyZxc
	 gGuodFVxkaVtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510FFECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166229825331.21037.9497351046661513349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c828a70dba0704ab1f0fb4823ad687c60d9a26fde224e3185c3945e58c9e6fb7
Date: Sun, 04 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662298253
