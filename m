Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDD436F
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC3DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666600853;
	bh=aYX2QluQ10BhPGuxAYnCSLw8wLIuDFs36c0PIHVgg4Y=;
	h=To:Subject:From:Date:From;
	b=cbREj/7CvfEh1M6w+Da0f4YHNEIXE/04w0LnlRJZ7yCa2OSb1x50I7dO3SaDQGUXn
	 jToXQRlIjR+LyqbAjgDYrrh7iZWfrFMqDnCVvnoo3EpIc8JRq29KmT6QOmyZCO0pJG
	 oeIuYpnVTRWYgG99zeFV+KQiEyZO/8Q/9LK/3jrBCdHM79eaimV7328NnZACMnTYAM
	 9BGspbSr/iaKQt2CFXq6krtvtAkJKmyvo2twivO4s4OD69ts+xI7bdQP1AuO/gL3EG
	 p6nf/VT9eJ3+NYW8y70Qsy5ZRi0gYkoauQn3DM49zbEpZvhZOxUVdQxuNfSgMnpn8N
	 rHKcnwvNlqrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537B9C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660085333.7454.4724058634113947562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb1d256406970d1ef628b414afb5c8bc43a2cd75af053001fca84067c062ab9
Date: Mon, 24 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666600853
