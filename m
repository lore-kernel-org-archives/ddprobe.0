Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71487E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83161C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672716687;
	bh=JOnfdZrmPMXSVZG3VGR0oAPJ0GWxFaZcgkBKd7mGN2A=;
	h=To:Subject:From:Date:From;
	b=VGmIMOUrwxiM+awwQya6g0f7nCkbI/MORL/giyeVYNL+Btp+7VcDvpW3GWo2keSaw
	 iaCsjgwG0Vn0KbAT+hvQMcpgJI/JDq31XROhLcQ0G87CLzMUUhAXP680ITKCx9qWWH
	 MPbOoHLZ/xwcPGk13//H1E9PLwMTohi96Qyu548RrSeHBtokt1BE5dRTAyxsdCzB1e
	 sZLqRnr/EeDARdUs7zbvTBfApt58nQuBe1my/VQwNLUvc21Js1rQDZH+JaYEW2nbEo
	 VoDfz2wK20vI3W0AEkxegD+2Fbwu8/m2OImRPYnvaS5t5OKIgqygjxZ6Sn+A6FQOvm
	 ehi4G1FL1GS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E87C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271668741.3888.6205548584316447067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2a29838c32f6e657d934f70df39b93e0e0b18032f61148670a4f51f7cf2543
Date: Tue, 03 Jan 2023 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672716687
