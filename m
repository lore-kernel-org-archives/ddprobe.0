Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36581360
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DC0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672396887;
	bh=qL6QSwdog1FjuVbK1AquR3SlWKFi+nxw2hOHs8fJ070=;
	h=To:Subject:From:Date:From;
	b=WY0YhTp2qR3LchZx63fgYkbRx9dN9k9c0GnJruwBiC8LpV6nuTKoqsqkoDU0VuTT2
	 rka2zVW4qpVdRsbZyAOc/5vLN7dJ/V6MfGw80Yk8GpJNrNUA60B3WRBCzTt7ueP+B8
	 cWmY7xN7v9sKo379ODfjUPwYLgXaZEjw2hKQ8NIDJmQR9Ptvu/pPb3wCfYvy6dkcQk
	 KO+N7jlOLXQWUJqSvaI008a+hUYha82jHP8lLMjoIrDnC2fyIWwqrZ6aUHDAKO5bi7
	 5E5AS8O7zTB8HlDlGgTX5W7xmPO8fhhvYAIT5sEyt5abrakhqzp6socYycW+sx8VFV
	 xx4E4AaL5HInQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E447C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239688737.3005.8989301001700608918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb404322863e454325c65d123724d208321c2daeffbf1dfd08c88e2acf2adc8
Date: Fri, 30 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672396887
