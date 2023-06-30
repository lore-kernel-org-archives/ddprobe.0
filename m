Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453678F50
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 07:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2962C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688109788;
	bh=S+ZzsKLWHRnzY2ipH9W2M0Qegf4wWz8+MMsO8inKzXg=;
	h=To:Subject:From:Date:From;
	b=BgMwMalbbFkrt4pSicG7I2Gnr8mloLJLDE3e90GJmQNi0547YV3xa8DOXWtMzNN7D
	 f30It1dOPqJQRPcIeyifcJTQ5qcuCXbg2OkcJPTlb8mzB+mkcuh1ikFANIPw9Csmxh
	 ps4IbkeofYJ4NNFO79D0GOopIPCxQnqOHjEPYnFMPzP3olrreRGqo67J5ozHI+Y+er
	 pDk/8rKmS7QcKTCtG9kVnhp6GcE1PuNVWrmB3p37yARsYaxInHHe2HwXKJ5Op2yPVt
	 6ZIYx4aVngvHWlha5WnTkHgBrD02DJp4JqyEifJOTcWigK8stUaTVIsChvbzM/35gx
	 5H6latLWqp79g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A24EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810978868.13011.3389600916898777976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72375b492547f05238605201ff310725252f08970667149e89b24a8593b0ee4e
Date: Fri, 30 Jun 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688109788
