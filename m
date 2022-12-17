Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE7D373
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DC1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671238887;
	bh=S9t3q0ldMaVo9ksZCWiPJzgtdyYCHhYEYMR+ZoG9DIM=;
	h=To:Subject:From:Date:From;
	b=RuGTzfqFIHnx6Lo8PowzdYSHdPNCIiP6/sv+/phg0bHBgjDe9M418e1/8LX2t1yHO
	 VBkQHaQYbPz0MitKGY9zWLLAwmFjAS8r8CJTfPM4OdR0X4wPirXzN45FwWkFqeU0Vc
	 v8W8OOQbscqk8pFjrdJ0bzqQ2YJQkKzLjlMee+CJaay0JZc0tN4j/JNgaXw72j1yZg
	 w/FLLq/QKNaa4bmtovh1vxnCuPMb+Y4jO/n9qdDCI+d6r1vUZ1JeVWtCOwMkKL+6af
	 ZMlCQJovwO6bX8ssTCn4NmkMccR33zhaAjo56g+LfLtfHr6G7siND/z0whuJSDmfvW
	 9Ovs1zR8WoEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6926BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123888741.4507.18438509649109156697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c5ba0e6876a214982a559e5615b63dc97cc777516887dc686f6affbc4011af
Date: Sat, 17 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671238887
