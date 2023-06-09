Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A201B908
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 19:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7193C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 19:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686338825;
	bh=e/DPHKkCKIwlXtUavlwzO7HSWj4d2Ln5enGe+YcelK8=;
	h=To:Subject:From:Date:From;
	b=fwbtsN3c/BbDC4tLlYdyVJP7DI3Lo3aDLaNIpGcvEuZTrrknnbo8+M6GBehyDY8jb
	 zGv5Ki3ESUw7xqByXDOOOvNalj6Ue58vRQgq/AGXZqPKh+1cqc96UEjXb5SK0Ct8wI
	 0Ucc7J6YbOgoCXdohgdm/sBtR3FOpuJcDO/7dnDn0mZvXGBL/5cLqfOJO54OBTPQXe
	 XG4czScD6eJcyVdswUV0UC4pTBeFPu62CgKP9Sg8JEe9HyH3fDVFZ9odYN8fJX1qFI
	 YtUkjDPo94nvOPhN/DvELz7Qgfa106nC/1fxRGkcjl76EDTZwm/KDrax+0TaLoh/SD
	 v3C5pXSYWj19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE36C7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 19:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168633882575.4159.8822647258086804286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acbff61bf842216a95bdb86e6a81ef38d1718ddea0a48746f92288602c8e48f
Date: Fri, 09 Jun 2023 19:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686338825
