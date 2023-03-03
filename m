Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6210FF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9520C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677825965;
	bh=4CXeZgEPoLO3/Hhv4JLpf6+LqPFf26nLhzGLGV25nJk=;
	h=To:Subject:From:Date:From;
	b=NJaWUCjy3b23BorAbf7fYI+Yw3KK6dajUh3tkbcu3dHqfpfOUvU5f7tPLQi11RKGd
	 BTZNBsTezBHLSkWacZQJ8zh+hZhV/KD+1p7PGo+Ic13OjOPN6Gra/fwkYjoqvKwXO1
	 lYr9IC1O7aw4rly/6vv9poiNXAAXcyEjrujGDX5eoGg5lUuB//+d92bFfd/fhYR058
	 oufqD/93yMHqNlomYDxSS7jkuBoH6CfM8KyYrkcrraBtSRHV4CsY7xXLZs4s9/o1PP
	 HVylPJ0zl6MtxO+B19zKstEaQFymGkex5Pu83LPXEm0nJWfW0i38rvKz5xzRDTZyFz
	 jh0LicFNgHUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6E8C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167782596576.22004.1941036514408936493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ba4de5d744003a5e4a18b4d6dd7a88e27a52b1775d49e4d9f5609e19fc9f5d
Date: Fri, 03 Mar 2023 06:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677825965
