Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BFC12E64
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwZ/euem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9825FC433C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698664096;
	bh=RsDQa1oFTI4Z1NQYy2bgF53a8ph/aTvhouiAcvErW7E=;
	h=To:Subject:From:Date:From;
	b=rwZ/euem220/zfCG1rEQLNPFeLc9NgLv7WyzFrbd9w4CRPRFHDuLIZei9KtnnVO7M
	 S1OmPmyyD9NSth4xHcEa9k/jb4dKdcM/lEsLnMn0s4QG6m9XDqmO9O+oBQz6JKJk9d
	 aXoflKFeEnq/4GEaopZo4n1EocXRKewnRI5a9EUzsuea0GuQUSsU0om5t8AVqIuzlI
	 0nESR38Wqjc+uZjy9vtmrDoMqp0jgo9/6SGqYZhn94JRUvFr4giu71bNCRKfEfQBxt
	 bsSlK3LjavawLqegVvcO93oEMrkaE10wtzif8NEDaSdUaA+JER9EjKTqnV0g7HOfwp
	 K3OuEuPb2+jSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 749B0C4167B
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169866409646.21658.10885164012830255221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4d0d29c7f372c6812ededd33ed3058bc139dbd7f91c21753667e1bf79665c7
Date: Mon, 30 Oct 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698664096
