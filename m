Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B8A79D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4403C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679088125;
	bh=02sGtvOTBMa20TCyEiwZd2ajDcQ6qMcgieb1xmdX6tY=;
	h=To:Subject:From:Date:From;
	b=Uk57xH1fWl02beicsMf7miUFGapnOaByRkrC1pPyulMNxoIDL2CRs7IQGkn3Rhtsk
	 skztIdvD+YoYDDFCuOO0j/2AugRuoE4bi+uMWYcwLgU/T36YFfDqmWrGXMuQec5Ntp
	 SN2SxOKjSajVuofT9L1MELnAMT/LjcFdQKzXOe6PsLtQa2nK5r4JFdB717IiIp6SFy
	 5WHe6VkAkIwGL8IfWFI1QzvR7sKp1ouf2CGGKPOP9FCspLUoxgKefOU55p1r90ErFN
	 PJ7DoeXqWzvXuBJTuUZxhdp8HmNhDgEz/Wq+03vh0Jce7VH40OAxrsYAkmrH+TYws8
	 NxQlHUkhecRiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D82C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167908812579.22813.6182681859318508908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d121530e5cf9873cbc03683dca80f566ec4982506ed06d898758d2ffc0e10a
Date: Fri, 17 Mar 2023 21:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679088125
