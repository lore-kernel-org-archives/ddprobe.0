Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C947D323C
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7582BC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667889654;
	bh=Kv6BuBOyYuVpJsdoy+lN3UiToDjC3a0WzvFCI5LZPEQ=;
	h=To:Subject:From:Date:From;
	b=V3PLwGI9xk1qjqMcurFN1zzTsDuXXnBrmXOxlpFvY81o9mFOqtu+E0um7e0I/TA/f
	 fhFqqRtL3aOp0iQDAuuroBKzQo6io6BZ3OK9DWwDqktXjvdP+TpBRTH1gbSo53cnyC
	 fsxY5SQLllFLm4X37cXXfdb/K+IGZVUjv7zdWlnUyja4YicR+W3NmomvBZgFV7ROWf
	 ocFvK7j7QbuhuM4972y3+LZwIDlTwHg93jbO4Txjj6L6Y5hCwnmTqOehx3mI8aT3vj
	 3C6XdJ52AIPtFRBPE2sB7rZqdXmASf1IG2KdoEAesCoyagbHyFimREGbE9dLzzCud2
	 BZN1VgtSJAMYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCAEC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788965437.17320.2987580231010597408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7841c3d7cdc9cb9ad484a6dbb32f83079badb97992a75106c6767c6b635cdde
Date: Tue, 08 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667889654
