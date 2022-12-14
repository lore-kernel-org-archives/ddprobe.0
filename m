Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33F320E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F07C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671003087;
	bh=XuG7JrIZDHG6D/IwYJlluJLJLwe/xM6wXl548JY8XSQ=;
	h=To:Subject:From:Date:From;
	b=kBwfg4JxYUctJ3ZlksQwBpdUBs04ie6hUaytmOlSNo7qtJc3yDTsyqVtEWNUHaoVf
	 rIYC0HBIE9P9QvgR3pj5SROUwgH/apw8tnYWcV/TkBfz75mTdJClqfcp5/9umxsqGW
	 bPaxGVPYuGZMldsvGE56vVl+lfVA61/RI2+my3Jp1edVtvUKelqQ2znw85YMJLkU6N
	 7IQ6TuzAoQDuUjiQigPEkdgCAzeS+F77tdZjtLbDldh7FSnV5VQWFnESciVvMy//2J
	 CVTzOhk8ldRC5hfq3sCfItLqv4zg6bp36u+cotv41Iz1qtxrfotOwXIeYli4Cimoun
	 uvSwtrGSWFRbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D95EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100308743.31381.3060950704287810296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5757b4e9455e64a0a71e8092a9e80a6a170c43779f83cb92ef2a49215f4266a1
Date: Wed, 14 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671003087
