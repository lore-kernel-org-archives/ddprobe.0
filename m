Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DA910795
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 19:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA122C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687980189;
	bh=/vmSBSWcVxrSzgydcbP2EYWWzcgj9xVE6w7xttPttr4=;
	h=To:Subject:From:Date:From;
	b=c3D/DSJXBlJvzD5oNg7GiRYQOHOYqiF4q7l6jbhaiE+yuClYghUrYwyfOIK/9uyEN
	 R19m53Jx6OlL8J0mpK7Xz36ZZZ4RrKPK5OISbr3zrJeD28ai2CdLDgR+5tlVEcTBEw
	 xYRsfQcxfrflWrlmT+YbUYyuFK7Q3UNqx3+f9/VpU5K62GsVAHsDSiFJoO4GzEic7T
	 xn8LZEcQFxFz7f86OBN7X8PjmPlvX1NXTff+6hwgI1qyEuuhlk8WgQBoeFg1g5guME
	 pNVeF0kb53FO9nmMOrbfdN5w5Me1X25pc1SaOQeNxX8PD5B9yszlgWLVLYJyRsQ47f
	 iYRqPEdfXV56w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98DDEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798018881.29560.5930032518606451508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565014bf1aceab79dc79e8cb95296179139049493e9c3786e199d7ed5358c57e
Date: Wed, 28 Jun 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687980188
