Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9E815AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F34C433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663115453;
	bh=Sib0eEg+EKTreMAPlvZc82llDAxcvDlrEa7dn98j+8M=;
	h=To:Subject:From:Date:From;
	b=n5NRO51Bi7ocGtzZOK+6YcS6xV3XBDkMYv+VmtF/nz8t0qWZDCMDcV59YX4RjMsH/
	 CVMdIeXzrdz+56C4j0djTIA7N7jOBfH5VT/2G7e8NBHCDNXhSxOlez1dax1vnazbdw
	 uPkZlwr5d18vxw+IW0uv2dVqYhob+Yqp0MzZRbV0slqFFsY0rsk4F5lpeMF6gvpWrB
	 WIgrY7ayaPTZ7eE4BQiAHCrfz10h3Iy6oM6950Y6fNqQ4p3HtHayW7obrMCD0vRAgr
	 QAeOE2EZqNP7wUc5ADD16sLfXCBvt2I2E0DhSS3tOGUvd/Z1g4ubkUvVY4u8w0h4Ou
	 y9Lg9ayLB7s7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A083C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311545336.30912.757427373932237046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa190c86ede82e9840ca14a4d842ae962f8dd9f9a1a56c19dd3aecdc7912d9e
Date: Wed, 14 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663115453
