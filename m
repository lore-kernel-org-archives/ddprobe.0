Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABEC1BE6D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4306C433C9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689934928;
	bh=tPBsMhShc8KUFSeR+TQIXmKMWRhxAgRV4N4J4bLg+zY=;
	h=To:Subject:From:Date:From;
	b=GwKF85x0PFBhFdJ1/wBj1rPCqUqOFUGM/87Zog0eADnwM2vXPQ/nU8wOnREnTNmzq
	 H20ZG08+xROc34uAcSmH+GUw8phmyPuJo0fFlPzC9Zw/x2NRk7UQjzg8Y8U9VquKDW
	 hTTgV4zuyjKSSu90T4AoFk3NpfB9AaHwXvibB1HNZkYj/GGcwEVXdvh2qeeK/E8Fgp
	 2QZys4r+sl2ElFWdEgkB8Ta/rpQflrIQvnzaiOcpvOZn87rbps7o6jThAN/lONcsNb
	 Ib0HGRkZQUttB03UzNm/J+V09vdQCbJlIaqT4S4bhLoEA6RsOnUg2/kk5H81xcWVQI
	 OgsKESXOfyEjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97FEEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168993492868.22050.7289563021775452756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2141fee2001c33906b1149ec0c8219e1cfeb3f59d0b51739f6c83ad1cc9aad
Date: Fri, 21 Jul 2023 10:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689934928
