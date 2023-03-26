Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A20764E
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E912C4339B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679833926;
	bh=h1HKuIz4KUnPoxj7GHep8QMnHx4jCcJIaMvLuOvGzHw=;
	h=To:Subject:From:Date:From;
	b=etxqOjSTrQQsCvlmHkV9aQxM3e6VMiyCdyVyQeoDGBLa6kE+C3zx/54b3FzxRbW9m
	 kfFKXPWtZSWg2AU4YIEaSOGSyRCfY46Tx5+I0iub2svqZiEobxQsUVK2d+BevDrF8b
	 3dK+m0FWN6hVQlmghIFM7Fa3oElzOWqnx5g4FC4SBOKwKck4/m0QEeNfMSZyl/qIx5
	 Lfb8zF5Tu5GdEj6XhZHyBeA/u6OsBhlXRHiuTovnEn074d2WGeAvZQoWBpgD7f5Wu/
	 t5kIVn0EppPI1tz/RBmO7T6zjLlG4rXHC0w0wmtt01mS4OGl/xrmAy0nBQr7qKsd9a
	 lSMKoH3AnHr1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDAB3C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983392588.8220.12382533743370159131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d86ab6e251147f02f93133a62dbf228f7dec2635208f476bae4687433f00a27
Date: Sun, 26 Mar 2023 12:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679833925
