Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A9517D4
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 02:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkHYnwhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FD5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696647428;
	bh=+W//3VncVbLYRCYrHeM9RN+T5sttUCDGJVHCLA2joFs=;
	h=To:Subject:From:Date:From;
	b=ZkHYnwhTuyRqRloFSHBJbQc1puXpEIT/y/LkmppEVxTXjzccB4pVfFgZBqx88XqiE
	 CA6OpNMPS5s/OHnoFLcaYcd25d+jH1UD6MjoYH3KaT+I7x9W9h3ffVvOT1yAtb6YeP
	 aQkvC070qcXTQdZGgmoLAOlCtH/lmfmCks79nOqWAWKomJDdULDzMQz87krLlU+rDo
	 dL4KJnpognpf91cPDsWIlp562xYe9znEHX6e9qpFWTamE8ZMciq+1iK0eyQgzbDuFZ
	 I8Ty5iesB2XVeNIFLCZxWBsO734jna5jDGZ2s30WCwk8Kr04jD+otJxFz0jhni3f5g
	 YwZqbhJFwfvvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01A9E9413E
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169664742870.24874.6285789147059899761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33f9abe5a863c3ae608b9a575904bf7238e92afd58db91e6f9bf421737e0d16
Date: Sat, 07 Oct 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696647428
