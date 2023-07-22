Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A370439E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04F60C433CB
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689988929;
	bh=F4WfUezyYYX7cdrovf+Cxl0eCB3L49X9qEFfLi8FXSQ=;
	h=To:Subject:From:Date:From;
	b=h9mF/nQSaKLsP7RnKRVMbPBlEhowZaP4sEgBEnUbfqSjRryArSAKxDss/xecBc3dS
	 gUj8bRayCDexwuTjAA2lL2yreJgXHtgKuAR5aBduGbW7eXpeZ41X40EYpVnxmCFLzV
	 NJyx7awapWeFGXFOBQiwX+Jdzdbn0vvEb0T6kdU9K5ry9kiXF0D7otsZ9K7gJvE3j5
	 fHtjYJtiG5bzr/qEvmB0dskYek+r6yhoDf5EswaqB6W0YkeYb+j9IIiiHTFht+/DDI
	 /8WWUCwuqz2RjxyZnC7Jf3hLvdJ1ccfr3NWnZHsAZQLSYCqU8Mc+d26ZBQhfhmf8sJ
	 i4WuJ+sDXZXPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA8BEB64DD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998892877.26539.8071231849597942431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d8f66aec218589613c68221de41549e1312d65c2c5532ab8cea5424b9f175a
Date: Sat, 22 Jul 2023 01:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689988928
