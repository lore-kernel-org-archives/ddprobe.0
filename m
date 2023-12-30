Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268748483
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9NPimaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81948C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703939296;
	bh=6I5uGVCY2UTJHEgUU8O5LWpS+QxuVO5YYKqdXjeUs7A=;
	h=To:Subject:From:Date:From;
	b=R9NPimaTTWG0t1vQA7SJuic/SbsWom5cXkJyg4bpv4WMaRim9JwT0YwMHPxoHIT2p
	 yTFMETUg2p3Y9jFoaeJMbyscV/FJO6tCdb/TPzqpWRxVxGET8v27VuujSEPAGpYIzD
	 YXAcMbNT8PFskDjVebqU0aaD/ZG7Tek6WntXgHCYS7oCNJsKbI2HP1smJOIBWK5ZOa
	 qnBQg5n0haJInWGpRag0L5wbn8Bh7c64hxbujzh2E73t9aJDLEi5w9jVRScAb+9Uws
	 Ip3li79LuLHXBl0spXz5um/B0wy6OePtOUxD8CuVcnoWFDKuoA4ct3MkfzyU9OYPW3
	 Irseonc6+mJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63338C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170393929638.14852.4962337886105468051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fedeefc4b3efd0829d530c31650e170002ee80e79b24adda24f5d9aaca93cbeb
Date: Sat, 30 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703939296
