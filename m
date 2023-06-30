Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6406116428
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E203AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688159588;
	bh=brw11hgWwsxW43XAvNw0CRAX09CuH9AbKdWPMgBvsDY=;
	h=To:Subject:From:Date:From;
	b=Jz0UzvFJTjRMMvj2erlq8s+C4R1iR1XacX4aIvIckST41RNO54cfyGHBiAEnEzGDj
	 PHPB5rr0zi21034Z1LLobaJUXSijCDxGv/qQ9Uv4lS1+Ady/OzTzhs46EyuYDu1XBF
	 pRa9lzc8u23hv3TSVE/96WtnN1ZtQYDyj2lbqshSK8GoXqU+IYGgBhRGxiG0NhUwPJ
	 6Lr/Dg7wNVKTzFg7aTvXSrLUnOLqhbk88c0EOh0orVckxVIq7Oyi48ecD8twr8wvz3
	 BIYDycbTNSpDOTalS+pfPg8JI6fEKTGbXVRxsMMut7MdXAjXGwlqgLA2sA8RsGJV+f
	 Dtijmc3Ib0ZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEBFEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815958874.16717.5826808747946865155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4e891b86c90a1db4a19a2781968c17905dbae10310ffb9eb59129c07b261f9
Date: Fri, 30 Jun 2023 21:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688159588
