Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA39D15AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733F3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664682653;
	bh=BSQre65VC5ni3PDNXhn2pZZD1JlxzanLdNpsaa5YHAI=;
	h=To:Subject:From:Date:From;
	b=n9IRYfBY1E2oeXYLaxixyUs98Z2h69ZGZErzARlLbCxeKhqWctKmMgLrIhL0H+Neq
	 //+/Ef34kSlImf8ubfPGCIVJTQYktPuaYIP0g63zzORT5Vety6OJFe0Cjrz6HSbDxY
	 4qzyz7HrWaFuKhlvO+aHRj2fIkPKFUNucluxGUpBpGY5Q0iVxnVln6i+j34fG+i7YG
	 NeGYjVLaoewOAdK7CdJzaLoBTr5/mw9eamKQllUQNINROu0ef4dk/BdTFm7LCTqiEe
	 1mjBhP6ZHLsz5PIISyVBS/MtRRKRkvHCgtxbkGkNesyzhRHLwqQGFayujwAjTaU9av
	 o8vkTyqLrKpbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57632C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468265332.4680.3805990578696534864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9a7f977e81e7396be05fca18ec4237081def154e69e7c0766f6a7a631f6368
Date: Sun, 02 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664682653
