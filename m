Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6053F8483
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFW/tkRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55C1C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696758428;
	bh=p4Cbtq5Va6aXL9GRPm1Bw1rXN9Gr4Vvjix7QGTVz91o=;
	h=To:Subject:From:Date:From;
	b=AFW/tkRtGFw3MtlR1thjNSX0YFIMUE0UtOaGeRJDFb+l9L9Fm+lbEhPdNA/Y0wCbS
	 c/6HLvpsj2LTD9yQcPRtSA8a8ls6ogrsJQBDqSpEkJPUkK4jA/lYLNc7rqsE0+uvsc
	 GmP2nE+hj2UQHl1gzy9rD0YioSpn0di0YnUiDu1bOJujLZbfLvcI23KPihWCUvGcB3
	 c0BfiaKLUluCxLwFxRtJeYUOtsX8pcodEVS9MYa1KaLPHpMXA6ut9E7VUfl4JqBnQ0
	 a/OrF9JoM/60SogkWd0VmtNccRtvmImHJrUQeI7jaxTIk6sE64mYCzCHboKKiOCtgN
	 kVuze+Hl9LoVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A860DE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169675842866.30218.9430324861536701089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98d42932a2fe0633761e72d19f9fbca66fb852ebcb1847f2bb571d35d33b9a3
Date: Sun, 08 Oct 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696758428
