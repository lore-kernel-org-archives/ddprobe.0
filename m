Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B8A2770E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8394CC433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673027487;
	bh=ovHAi55Rga4pUE72/yjqkKjrHFFOnIBhM8Q4wdXeII8=;
	h=To:Subject:From:Date:From;
	b=p/XHFT/r2B8seFgtoClPqSKVv5RkyCTXaj0UY+lh7C9KIStG0DGLB7xBZYRd+hqZ8
	 54Piy8eT+nYKlVchPa9G5gPLovDxJNeRHjSHowTK+np3pKPedlqK/cXQ7iZ2YJbXrL
	 FwAJUzCqpKescLpjkPkJk6Vn6HUhlbDYXiTC2ucNxZ1ONa44DFEnijrBJylVCO+BoJ
	 TWBM+HjCrTvOva3K+UI5xPQUOdMLJq9qMEoi89w3EkU3Lx+r8zSkWRmEidy2zD4iJ1
	 Y6w0NbRNQZZ+yXUg9AHVGoKYT9eTz/MWRibcrFQLxhMGY2LU0L3pmGTJ9lJ6Jh3aNd
	 iH1H8tWGRN6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A029C63797
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302748742.13901.11348010553722606721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b2653a842267077f8cf36547a318960e72484f029314176e69d21905bb70cd
Date: Fri, 06 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673027487
