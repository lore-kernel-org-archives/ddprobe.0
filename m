Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35E533C5
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1CCC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665676853;
	bh=Ez5caFpvI+jYNO7XeprsgUEsCJBDnSyCxQW/FL2/obw=;
	h=To:Subject:From:Date:From;
	b=UM1lW9csbuteYmIBzXLzwnuVYSRwAHGYqrJzef/yulXyaIIdvSCXLkDJLfQ2w7Giu
	 kbHZ5Vu9poOzb9zzUsGjtST3b6wqp8/jL7R/tTEwUn6iMZc3H4PRFBHlF+7qIce0Wy
	 D17BVHmGMYii0z3Na9FIKYExGLwzaU3ucaDWi0yocX+nGVoC2pYTrGLYB59lTAo6V6
	 WTEFJLoiVBkCjHiz4CUd7wjtPLpgQgq6hrRf2GzWZoSQNNePv7vm9CSW6Q16ZueUFh
	 9pQ6vbK0XlX3k9LYNRgffMdyfwfsg/TU46+ivEkpmu5ICtfR+SzgCP3GT9EORkt26D
	 oiRjDGNHI1EwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557A7C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567685334.10733.12000438847738022166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8580537f50ebce9ffbd1315fb204a5063c7c00b1dbce209dc98ef2bac760b3da
Date: Thu, 13 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665676853
