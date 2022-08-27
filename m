Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78A329AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802C0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661635252;
	bh=NY7qLPu9qWJ0VM8UAxJWd4kwiMxsv7pkTnPGJpLXoJU=;
	h=To:Subject:From:Date:From;
	b=qpISdkSYdUymtOw11PJsa1dqO4iZWLrINSHcqnN4NBpfQZPR9J1mD2ZjXOJ2/GgCo
	 St3XOsLI1FF9cWUxcH8kWR6+YN0epWTs9wygMd32KB93Ej/2yzEz84q3VjO2tiI/OL
	 OzDHGMUzYH8BMUJVnlx6U8V5gYyq+mZsvnEEm3teJM9NT8QiS88zWkSy0LaMTbaZpQ
	 D5254qZpSyTtjLdr/EwflVhiLTL6b6XVGujt+fwKVNCnfe6dmQm0JA2Fx2AvBk569r
	 HC5SMOIP861MQVzVO1p4OyGEZSWnL8oexBkC65uDu1IQ7tlRPaRUu1bmjDzzq8Cwe7
	 JYEBOw+5HaLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C16ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163525237.28580.11261893660288217054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53822e2ef0f12155fcfd88cb6d301b7fa1266b8e9c97bfedc7a61840d2e2ac55
Date: Sat, 27 Aug 2022 21:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661635252
