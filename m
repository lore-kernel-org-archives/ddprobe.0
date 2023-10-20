Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244C0D260
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8j/AP0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89026C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697785096;
	bh=Yecm5gZRgSdXH4YDRar4xSGwCZ3vJyHEvG1sNCkXFKI=;
	h=To:Subject:From:Date:From;
	b=a8j/AP0hb/DYq17y6+czKU/THM0QCKLA9GeXq8lkU1XD43GuXgdgfbm1ECx6+kUKL
	 2eyGC5qY5bALF+KcDFxYlAj1L7JG5YSHvFxqDTrcOFq8iOWZ9LF5s9yokb8YHDyvTI
	 4mGyXWWMaQDrOWXImu0brm2FbFD19pfVqdkyfe3yaewJe+6aPBjHkmyZDLNehIFaf1
	 sHSzwgKtPuU6JcakGM5d59G1IIa1WPKQd8eh0G0L4VTZpNM8aXLc6+GWi4jT4xnSlt
	 C33E1duYzPHirQpt9tCZQNphs9jc5oAFnr5deyfsbuQKdKI3FjtmHmq+b0W6NOMx9h
	 KDaqHvMa4oD0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67415CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169778509641.10881.5819709404835397912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6e169419eb34b5915335220c983295e6b60ba162206bca026b2f40bc74315f
Date: Fri, 20 Oct 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697785096
