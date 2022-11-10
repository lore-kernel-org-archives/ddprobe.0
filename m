Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B0C36E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7350FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668057054;
	bh=6/hRMvSNAVfEU5t+bYwzjhX4ynS9U2IFkBCYybRvShI=;
	h=To:Subject:From:Date:From;
	b=JC1nCFB+NpHiw0QSCJjwd7IlsXKlpJUXeJbi/b3zKeGahtWJh93/q3SP46Y7tFqw0
	 AZm1dEbepCCp/Ct6zC3WJwtrUL1a1idmGdJQLXwdm0q14zFKMRhT+Ac3hRFfUpEVry
	 NS57NzuVqV1lCRHAJvZsCPglEJpyt+OiRXfbG5gTYmC8pxiIqPNs4GUJQ31vM9bkA1
	 78PqZUAhWFRlLo/wk3fHxsmF8JdgvSdIHYShFXLOqtuSBUfnMDi6wWerYJq591H7UH
	 /Aa9sYKrpS87EIy+p8v5Nf74DOL3k/CSgeNePOHDmeLxoKUB9wsdcyDfGc/HmUPqrA
	 yFfUmNY7rhnHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B26FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805705436.26665.16110356538279801152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8eb0b9eff3b89028c919d320a72fd7960182fc47a2db275834bf352aad0245
Date: Thu, 10 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668057054
