Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6B7E54E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706847497; cv=none; b=rz7lxTn6p2EnZs3Xk132M1qLMjmvKsNzibJ3C8iYEW47b/FSdZJ33FJE4+YLlxNVS+Vg/31y4UVMAbncy6cVKUWOx36AeRHmtDMjAaes8cdC8BaFP02g6IPRBB61H0AAMo1CNFh6jG24u6lQu/8et3HWPcuDVfV4HIskBVIjH7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706847497; c=relaxed/simple;
	bh=+w05HV5DAgYw5si8Cmpa/TKX+JXSfJNnzgGXYGHh9UY=;
	h=To:Subject:From:Message-Id:Date; b=Osjd0bPjCNuDwEdMKk+frsIbGI1jSIQd/fN+tFQupeGl+/ZRPKQzUuwJkDafABIjfDn87Bnd6tdQc2e/ePK+0VlHUhavqbSnI35ZbrLBJxis91/HrrCDM47RuB9192tanRRFtrtJeopdUOtKtRs7aO27JU+tas6EqqrCT31Li8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAP1NmEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAP1NmEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794B2C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706847496;
	bh=+w05HV5DAgYw5si8Cmpa/TKX+JXSfJNnzgGXYGHh9UY=;
	h=To:Subject:From:Date:From;
	b=EAP1NmEMt8xZ1b3x5R75bQv9KBBiKjJygraTML+jmHc3le5jHBZ2BwSLIqCNGGuj2
	 UWj3iLXKoSdQxb0UXX4O9x7H90XnYnKkvQ7GNp/Zo5XIpiMWweVEJLMtoN0jIvQOjf
	 06dK9uxPyp6Kle34p8+QJ9UD8Lqu2OGjJSQHpRPrWeXMygouj31GtdHi8HHpVjinaG
	 aE1eIOiKNQMkuvC+/VhwaiTAdZXviIjLnfxa6FJWxn60jZ2gRyJF6qTwS117cGsk6t
	 hLQlXjbayOa8OQpIzd0p6xfFC8Bd0LabV9pIqg6ZyjKLYaOx2Pe+xc+IAh0cqpgzzc
	 Q+Z2yZQrI042A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4F4C47258
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170684749637.20750.3863296273691134247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9d652075794211205b292f4a92ffe3689de5f908559ce8bef23577cab5ed75
Date: Fri, 02 Feb 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706847496
