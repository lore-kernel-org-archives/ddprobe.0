Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD857F7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 02:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1C45C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 02:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689819729;
	bh=q4RiMAw6Q2BauruGLLey6W6Zy9VYHENxDlsrVBKPXNQ=;
	h=To:Subject:From:Date:From;
	b=RWJySPSRh9jZHnHQdR0mJnp4IDPzI1hqorwgXGF/9l5VOS9iiG+ZYgX+5NdZ8szmp
	 TOT2Y5y5LQ/btg7sVPu/sZZCxhXR+n3n7mm5W+wQo6Um84Oc3XQza6YYubmu9rX4XF
	 /869NmxckD9z1KwtttvS1zBkXw3FdknqePvSqQXbu7tx49ekTurjOo11s0cDyJCo2d
	 bdb6ozBXK111N93kuw3C56Pxpo8usAHFWrd2u1F1WVrykd5zT+hyuXlhMk+cLv0kzn
	 DOczaWMSwyAIxrhh5urzznJ3gK34mZVjFOaTvXlLfxKsxhoei704YsNSRqCluIYHq3
	 ZunrFQznpgxyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD595C001DE
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 02:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981972883.4050.3238470898290985429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be22b63794b35d07c7828a9924ea452634254726ca90a00809ae5ec296977119
Date: Thu, 20 Jul 2023 02:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689819728
