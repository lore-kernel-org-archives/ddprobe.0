Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EAA2105
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+TQElxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D05C433CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697186228;
	bh=zDiR087bO9rs6PQhIPV4bFA39A5fQjAbSazRbIOaAvo=;
	h=To:Subject:From:Date:From;
	b=i+TQElxBkNFikyv15iAf4zKZrfczVq950QoFbE/tkkVg3NKLM4ouXHDq/UQSdPixX
	 NhifTW5fPg/JCnNOjycuHM4odWMVIWWo4WTLuIva6T9y9lNB5HZQ1qNUd/63NzSddZ
	 kQbopPHqhAWU9O9FnDfrbVlhiVWO+oTC0BQrJToQe540fZJseTdBMLqWO6xCGnvi6L
	 BM2yHZZLENTw1JXoFBMcutUiodX9/kzvhRxkZoPvUFXj8MKmPRdmZGHHCiBXVz1/wg
	 45/K5ESUM3iwm+4uDEiTtF2Hdvlbq0b3u10p4nw8TRN5xByQLa3uMSZyUeogcexejG
	 buqm9iLanIS1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9826CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169718622868.18115.1054204652097901369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ffcebdc28e3f5a3b4098153e7fb7d50ee3f14ca45ebd65677b275f72d8eac8
Date: Fri, 13 Oct 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697186228
