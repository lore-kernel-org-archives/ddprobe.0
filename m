Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7CC800
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D823FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685343125;
	bh=6gKZjnwg2YbUU1yZFW2DIaJS6xSbAcsn4pLU8qC1b1k=;
	h=To:Subject:From:Date:From;
	b=Vxzvql5JuyvI6f22J1RsO6dl8+thQ6HWWxf9LYm1UlcLGgQhGoPbe1KBL26CG7HMQ
	 x1cTc4AQnEi1DiqZ0y6J5iXBCm+TlsQ5PmwQ/ntqMMeTGFKeudeMebQexIlVDw6OiJ
	 1WvdmMf7oA0GV28OMPzEcJVZ3CFsaCwSaU/ZBGTqg3wMCBAmiES1+iZiEni2aN0vWQ
	 06iPD8IwsiUcbBYwkDtCiHvByJyF/uF9VjN4TSp5y2mAHGyIY+IRc7kMoxeklQVgIw
	 +fSnl8VHyG22YO/sXz1gddBHHM0K2QNNDPThCH5YdLuMGBGibnG+IiHDbW8vw8ttD8
	 m/f/jD7fru6mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB6EC77B7A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168534312577.2783.3015801373597244785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2aea5ebf5fd8285c3b6d56243f7b458dffa0c92371ebfc2675b30e62d401703
Date: Mon, 29 May 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685343125
