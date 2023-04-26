Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC5E136F
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7087C433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682477225;
	bh=mRHw5+wOSgwCzJxutv5xOdx/IILM2Fk+BLsSg6lXMbE=;
	h=To:Subject:From:Date:From;
	b=gHfkFZdes3gqTGvaYPYdjYlZoPe5C/DpbXBslD4wSNkAig7FdNXiL3G5nGpnaAHvE
	 Gzs8UDJfkEgZP6foPGIiaAWgoZxK824k9YpgVFiiWuQ7okifqS1+zTFW/e7BjX95C9
	 Cote4exViLd8cy32A0fNeC/ZBLCxVNnACx1RdhoYekql1lYEMkPIAbzuyhtw0BsnLn
	 WgfTpnuFRQoGp2jk02Ku3nGDoBpZ45VByNbE98fxhxsJrG2vKEOxLOaC3vla6Ax/8u
	 krfYfwwRQHRgoBvac5MQs30F4saEqW7F7qnzKwN+t+V5rRpMX/vmbzX3QHMMrg04vO
	 taEB8pqKX3ErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CE6C77B73
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168247722579.10296.5250593580729606991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd628745a1b95ab6546aede2299375502b35942b6d9d7133f2d75d4e38f9af86
Date: Wed, 26 Apr 2023 02:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682477225
