Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE70C7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E614C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668475254;
	bh=kJLX9oCgkrXvi5hjKbbC+HwAD0BipaUE5zyVJkDIswQ=;
	h=To:Subject:From:Date:From;
	b=qUI8W95L4ZZ8LFW/RgQAqO3tDq2iN8ufJxV67iIJhs0h8DzLz6Ry2rqHHnygRW1ub
	 mA1uJQe9KoQYPfIwMgJEbOsaml2+0v7UpAm6M1c1LWt8bNA3mExaOJtFnMu+4F5TKu
	 p5gjSteX+G9CabtzJGknAKoI1xMDn5YXr7LsctFwgeoGEucaVBASvXOerTQ0evnCv7
	 ATBZc+Yb3VcbPl1Rlx8/AW3OX9h1YZm+RJeWjCxEjj0MFH1Hm0NyObxmJJ2enrn8gC
	 STNWh8uhV7LM0jLAy+nwM9962IX/kOQXgKA9SvsrY+CQAr5WERw7TaA5L9JFFRMZqh
	 Ef3dpIkbODT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559BEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166847525434.31559.11375073407476977504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad1b96b6b00523a7e2fceb5aed5172e2e191550e97eecfb07bc65128ff4b9ca
Date: Tue, 15 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668475254
