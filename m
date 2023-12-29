Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C6914264
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+xx5kTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840A2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703882296;
	bh=ZbkP1n0m7XIdrX5uTu+9KkD7GVxjaU36xVCRWlhcsYM=;
	h=To:Subject:From:Date:From;
	b=p+xx5kTRFJ0VZyzzuBfI2OduQ2pOH3W6wDqQCX5RTYKJ0Bu48YqN3oczClXAUwOsw
	 RF2t0sxmZIxa+VPlMI0RXwaRbCcI5y7gjga4btuksDIf6KHzmJzJK84sPM9FkdlGvF
	 7Vshtn++6MMYz/RCbRPO/jx4nyP0UBeJ/DaqLwXT+xclZZISV0aCzD/je+PcS7wvBP
	 4ohOQbI/uM86WYV5CRjRHcs1dY6G55UzR6BfR90PARRw2pwp98YUBBulDgGJii4VcC
	 KEGgNCzuZlphp0wC5N+vF+CztT/FVYSacc+Mg9NBH8vBjJ2iqEjrniMZ+R6CjtImI2
	 CQLHL6Astmpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6402FC46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170388229638.6966.16177936900149421185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64262c838e9154c42a444191d4e8b23344af4f718aa5173da06bd2445151080b
Date: Fri, 29 Dec 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703882296
