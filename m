Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562C515AFC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EC9C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688687228;
	bh=7OB5G9oacdqJTKewqixkUe/cWhPD0SIESd+3y694Vhc=;
	h=To:Subject:From:Date:From;
	b=TY3QTS1HXJdfxqGvoUPYle7DsKNoaMPZ39+Ly0ZMitmuNOhZMZX5JAzyZqGGQQInt
	 na2vyJJiCwmfw3eI3i3EivAGXTkcDdnFxCnnRf/MCFvk/FSU7UGBEHLApXMW0RFRPu
	 MDOPttbt5dnTUctAT+/tPR9uk9pLPVAAdwRBkm5yV44VD4F6XBUjySotho9jMfgT6Z
	 cb4KmJsMYc+Dx0JczWbJ2csis3CKktKf72o+mz0nNqwP8ywAzzzZ9pl3XnAXODdsJO
	 hgvstCdIqzAIhK3h9rqv860P9cLD8xvsCtNN8uWhuv/dUXLHUWHnueaFH2RtqIFbKi
	 Qicnrd/wcPa6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A752DEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868722867.24328.7132074986984227320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbc46f65cc435a345ce3b80ef0fbdcfb7fbd3fdfe51e41b801901e7a705d2e0
Date: Thu, 06 Jul 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688687228
