Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8B85C87
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739D8C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666222853;
	bh=i1WMQ0G3Z0QyPjPj20nqB6qZH73SOzEBT+GYvh0o+3o=;
	h=To:Subject:From:Date:From;
	b=A6SwZ9EHt7BwFiDApsxnunCIFmJa0lxUiOxv7Yy8BBPbLmYA9fkUrrMlhyV0HmCKF
	 MMMvt1yxn4ugv3HGNV5jBfT53wDYaSgzkP+YFZuoMZO0QX6PTXbsYsLCkNcWwtaLUp
	 aLRCWQR/X5ZVl/RoxkWPCKevbsiDOVBav7sLzu9aLMBRXfeA35u9wu0ydHdqR5OwRh
	 FbD/os/Fy7xOQF3MoiRK+IKEPcu40akuqv1DKhLif2KCx0yG21v0kVy6QRwe2z1QnZ
	 dsRE9dMXsCbBQdHWWRoD3q1cb3/3y5/G5VitNv75TEpU/v+XhlNO14weIRCd1HAV7y
	 EIKY6ZKGvyhDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F48C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622285335.30442.11922109180624866007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861f46e37562042faaba26052b642f22f04de0ec95515f8b4dc1637f8bea0a0e
Date: Wed, 19 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666222853
