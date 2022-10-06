Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62C54A00
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2D2C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665085253;
	bh=i32HFveL1oG/Fxpar4oYkSZH2wZKxdW/w3lVwSVMedQ=;
	h=To:Subject:From:Date:From;
	b=aqtwjdwCDFsqWCi6tAyyLoN4nRILb5L6trMCK/siHiCBj5cMXnJQH6E2qEuWKKA78
	 bKMSEv0lrr3Cud8ZQngH+ymK2q9xkgpYzafM9cWZso2x8To3ycZd92ORLY247PdyFF
	 apaFNTsFUWZJAel/kxgJGH2fX3LD+UPL8u/M/Fy9O269lWlt/StuJBUdBxplH132E5
	 cUM0Fszkg+nyb8jueb5GlHRELOXOTXQiuE6P7n63x9dp2jvMJVviKqls1KIPbakLT5
	 7TwyXoS4rYG+bUKvAyrJe6D4tZyo2d6LLwZtqGF5EJe4gRSg5TaClJ6lZX9GSAAG6m
	 SuVX3c4liqShg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A6FC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508525333.4082.15405518998177999215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb547a2000b9f7c33488902ac91da44f1cdcc9b7abccc6f365690f54feec2c6
Date: Thu, 06 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665085253
