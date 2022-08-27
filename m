Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E5515A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C950C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661575852;
	bh=wQ3kQFtVUqXHb9notQGXrIBKp3VrWm6hWIjc27oRCnA=;
	h=To:Subject:From:Date:From;
	b=Spl78rVV6UKdfzGX+yUzbL2eHVAYy+DHEZHDZHMtSwMMFCrLoHCEnpWy7W8H93zFg
	 dMfp/FWzYF1xhl84WyC2VHI/jOyqA45HQvzfEp9Q9t/doWCdaxnUHwHUs+WZjtdH7N
	 feNg271cgB4dQVM+IjiMrCgWwNog6ZIqcuFBQnGBdRSnCKtLk3ZAgP0FPsw32JHIr4
	 p2IPxLIoYsYq+VWqBu1xW1cKVKu/qZQKvbAfF0mmXIZ7qi2cUeLqAbDI9xd7mjtQLc
	 RKTJvNyVKMvcuq47YAMoR0fKylsqGUzC+Qd9NTzD2fVQv8ugfHIzZ+BS11rLoHtAlh
	 VAzQbVuSWIdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58561ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157585235.23336.9054290263539234801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b651d178d0043e7c3624c14758d9970eda3f821db667682f437829a3547dd7cb
Date: Sat, 27 Aug 2022 04:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661575852
