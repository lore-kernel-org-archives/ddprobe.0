Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C666A2100
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81ED5C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670312454;
	bh=Y7kBZhhDrTY245LdqyR31zExfx7y/VRuNPI4BXS+oYY=;
	h=To:Subject:From:Date:From;
	b=m2tAtyof2nmyqeZbjjcJkTCcNr7jcPHOgOClfsL7iCCDyNArHefIt1wTj0Epl3XUZ
	 wDbKE+buuhbBVpu+9fiRcvUdmUtvdYP4iMRywDs8de5JmsH/VziDktj5t7Y5MnQBot
	 Qp8ZxrsNqriD0lUFtltPOZtq6z6OHd5SwnnlgyNQfHuYmTsfEAx600oLDH9SUpWuLT
	 xJEN/lav6kfBAqt9TnqYuBgrBv5uIjMvbDTlPn39Qq78OBbhfrRpEO3c6wSlrcnQss
	 anvg17DJvcmwVklrn1CfBZpU/gLoP/t0cgwSL6jeFCQ5DrzwmLi2kpxc/clgR5Z3aO
	 gj1NZ7MZyfyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602DAC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031245438.11037.2408591076329209640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676efa98cbb87644d5c3a3f14ab99b53ac4a1cfb8b90c86189f57143337147da
Date: Tue, 06 Dec 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670312454
