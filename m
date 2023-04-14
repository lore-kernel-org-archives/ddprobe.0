Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556F17C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06CF0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681494786;
	bh=na0wn3LOZ74TNqoov9miOBfS9DkxyN/gM39ejeju53g=;
	h=To:Subject:From:Date:From;
	b=scU+EcqvBgPm/99zr8yd8twJwDds0rdXVXoNOD88Ds+R9Gw7OZMyW9t3k0WOk1HlE
	 ePneY1U2EE1anx+Cm0FQ2VXiTNrtf5j/qdQLnL4H28xQeDovjM0/finimrlj6OISjG
	 8PzUeLpj++EB+vk9ianeEEfOIForxoCvsxbSgxbwPv+GjdIzqPxxXwIOuFrOUtqayl
	 DzhWVNBS++JIHvJVIIgVlFM1W9klYrFHAw0vCpEM+jAndWLowbkItEAHiAXkNNJI60
	 /8lVuoFi0UTVNAswUwy/j0iat0gGZg8Ita1NF284EI9QoC4qrraVsVv5Ofp39C4zD6
	 2mb86gJ2kIdMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68A4C77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168149478585.27736.16540557309341496759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d15fbe4701c5d65515cefcae354b8f7a1b1a5d6fd67d4caa64a41632c2b3fce
Date: Fri, 14 Apr 2023 17:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681494785
