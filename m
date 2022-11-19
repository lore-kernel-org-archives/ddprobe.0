Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC369EC0D
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FE0C433D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668899454;
	bh=KMFZblVcSGIqPbPDBKZck7vdltAcw6aajF0Tr0VNa8I=;
	h=To:Subject:From:Date:From;
	b=tmMRVvazEFiHdjhqhMxsO7rnJu8y4MuRHqeJndt6OyftSwcxpDKaKR2xCVaapI7Bj
	 QGPP9z3Fn4XtSsVW+HP26AglUUyN/unnprANmeUUrd+1g27aOZQV2Q17/S95e8z4LD
	 BMGU/JAr0jjFidnH1g+tUV+iCxE07K4NBDkaSS7A5/q2PZL7l4E/tIQdMtRxLezBZj
	 i66qjelaT0jLmHVZzvqejJTbm0F1h5Q3CYbQwyUplse98c6o8MMpaLYaX/iTFixGk+
	 M50uqWJBpyuZv9cvCkWdg7LyMXphHYQIf5gb9Dxcg6CnJz1+WH0wQArIUVk1sVK4wD
	 QvzaLyZx7Ca+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCF8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889945437.3923.9841918388961951872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062618b49c14ae62bca4311a69ebb64a059c30229095dfb78647d9418f3ac208
Date: Sat, 19 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668899454
