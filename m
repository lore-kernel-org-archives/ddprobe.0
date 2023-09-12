Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE729443
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 11:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD559C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 11:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694518448;
	bh=kiW5UOtKEdqDJMD7wrdKXPZ4pM9JbQwxZvkHpRBtayE=;
	h=To:Subject:From:Date:From;
	b=E3s2lMOhZ/2TeGH077jjl9DvLC7kAm8WUSjDeUeGZz9VCEfsQ8oFVnZoASp1/smvS
	 qdSkFwtVZvMAykvqacsntemOGrwd24X6D0qrWXUnRSqOSKfZQgjeORHkbI8RTRyO3C
	 enL57BihDokVq+gNXbCkCeSvO+Bc9d6wKxnSHwg1NeOAANW1QZgY+PYAo+rwyDcV9B
	 PrthsiZpmNF+aFL/r/MQ6TtlEO+em92aDYq6/TK2loyBslJumcUYDOg0c7wsTHDguG
	 oWdxAs7n9k3PCMQE4p7i/GtqP2ld7vkm+Z1btlyiEzE3g7oxXsHnTqfet7mH2X4XU7
	 bVolLa1q/yK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A638FCA0ECA
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 11:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169451844867.11777.11751595805597766638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362f8cfe8ca69c7c6102f7e9fea6cccc0008cbabf4d2f01cc738425e3455a055
Date: Tue, 12 Sep 2023 11:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694518448
