Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EEF1C16
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD63C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670767887;
	bh=SIDLK0ZzAAZEX6RI5httfCAPcC9X7c3jhqFOws29zB8=;
	h=To:Subject:From:Date:From;
	b=hJ2eu9q6QgCapkKBncDsMC2vpgUK4vobxEj4nV+dRYpfrFwbJ13Hv0jnh3myhOj/h
	 YFAooeMIbqu4oDvuZBu5pH6vQ4X+hgTxqzLJl3N6+lCWL+CZbjGcu0luI8r0kN5tFR
	 MYmuYEUKfJLWsHicz8jYeCUDRATHFgAOyx7So0q8aTjAS4yJ6H6ZcsFi/3WzuJW/X8
	 rO2VlveEmQM/1fZW7Ciciq1G8IpS9LLNjqyWaXeYk9rafPqUfH20wtVOYfXJrQmE4n
	 PWhVb3uBKIhi2VEIGN7cUU7blGV73DJtCalrQFx85+FSfrEQyQMhfJWvhFAGxhVatO
	 jtXoim28lJimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621E2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076788738.13781.13145510354102658614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e0b065b8d4d18565edc63b68cd3036fa7e605908a0b255dd40d17c6b5466ee
Date: Sun, 11 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670767887
