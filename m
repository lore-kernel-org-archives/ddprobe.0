Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDCF25937
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 20:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25D7C433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 20:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690317728;
	bh=AdqKxtoaydnivqHpG9lrh4hiPVBL7Byrqun+KqUuMw0=;
	h=To:Subject:From:Date:From;
	b=rHp5Ecf1/B7gNC5uj+BHCa2HGmPyr6dah2hQn86OXEho+vSaqzoDUERocvmoa50Mm
	 lYQyruk5DrZHz4Cz3nh93qjm4LRekbpoVk8SnKRmpuSgsGrGULwfI7bPYTMa5XHmH+
	 e9abVmHWXNlaXLx+o98/+7DoR2zM4oH7AbMl5vidvIaxiUPHQligzTSKdUm3qHAsLY
	 5CjCaC+WCJl/JJaoZAaY6t06t1vvnws9GNS5erySNwgCLyNuIlY/E9bT/ZHhWUlaHO
	 q+1KrI565Iqlr+YjFKjgqP6CLIU9WIngNlcIcOAQNULPfAK+kT8LCyivg62zrfbrlS
	 MVMlo0dWk4YkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96ACEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 20:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169031772868.9180.6291177662378758448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4dd9660cdb942032ac5c561625565f130a8dcb2b8d1d49a53522e7f9174800
Date: Tue, 25 Jul 2023 20:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690317728
