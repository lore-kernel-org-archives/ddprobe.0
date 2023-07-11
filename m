Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF2D17FE0
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA89CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689068228;
	bh=e52Yim1xNsmZCglqmSXhRIKi0E+NPr6Jroy1GBDQ7sI=;
	h=To:Subject:From:Date:From;
	b=dG/vOaWMH5h0Gqq3Pl2stA463KO80AXA7p7Ti69nDJ9q9aG3mLGBfSKBpKP+IRL+x
	 vUSXboli2VKfueU5H9HRYkyA/s+6adGDR1igIDSz1XvyY7wLJlR64k7WtbnRKu+1vI
	 9Y5CD8LnCJ1bMi/KrNumr4upMiQH6y3U87unVqqJgttad2iIDQ87Y4gGo759Lm4IOH
	 OWHKVnYvTeH0oqg38VKKn8EQxFU+fD8wbqPkyMK+dJfZLXXOhWlZcb0zZ+UYoQyu/J
	 JT2zVHjp3QvNL0yHMZOUY4I5CkEtWAuwaXc7xxKjvVJxISFMbZ+g/T3Iluj9ttcX2P
	 J2Om5VUL6OMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D4FEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168906822866.30684.4698791871778835473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cfb5e96a4bb59227c64c697fdb033066a664eb87c4aa1ff39d5cd5c71002699
Date: Tue, 11 Jul 2023 09:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689068228
