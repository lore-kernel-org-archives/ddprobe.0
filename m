Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF353C1C
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F96C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664892053;
	bh=eTkx9+w/G4nFvLkF5ea6zZzn7SR4DeNwOyAyzLrF1lw=;
	h=To:Subject:From:Date:From;
	b=OfXr9w+xOIWdzxExaRLfql9cRIzs7b18K00Tx52li/UBwFozWO2PDKLD+2ToXh+vr
	 CAp3kx8+86BUlzt0CLcTYVdYnx4Ymc+cJvZihfI47j5GRo5hjTlBMAKIGtTTDEHjB/
	 +ru7RynqaqUNM0rHSZynRujC2+d1TMoC1hGI0lQM+6TjWxJPVa38GsoiHiPTUNTDXo
	 QCcb6J6ZLt9l9mt2EhVwkgYHXWZHCOpGohKBo6q0TIh6uJ2ia2pXqFhiCPnj9Ja0DI
	 uCNnE23rMtjLHbudA6+7VR849YfD8UaIy8RgEr6C2Wg8pZn25kT/rHjm5T5N+S5NzX
	 HlLk1y+/aSTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE0BC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489205331.7309.5974557875270492159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d93c8aa7881e338a81df8f15ee15b0cb39318400e1a67856ac9405a36e6ff74
Date: Tue, 04 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664892053
