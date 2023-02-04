Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495141C27
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 07:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE8CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 07:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675494965;
	bh=AYKpOdI5LI4shBErdm0KdDJw+Dltd+gHmfbZ+W4yqYk=;
	h=To:Subject:From:Date:From;
	b=TLn/zYPpHxjXA+kQvOcw35nHOTWXRqRFQE7RO4llCUVJprHYHiA6MLqwyubTqgzIT
	 TKlcJyB7ws6lqzi5QdW9Ba9WfmOFnG1sAYsRA6Q0HDdrD3knQOgZrTipE6e7qXRpZk
	 3YCRJtg3akg5z0kT93yYnsQVkSrunGf4vqH5Ychhj60HBMug60GKl8UYo1buCYuStN
	 2C3cAfBT2VaqQbMrDqpn6gJV3L72xRgXhVhLiSiRSsp6LawCSMsUBwH//Zd9UQ+PW/
	 cqR9HZ5QayQDlEp3swjA+7YDtCKD0jb9zD6i6CpCe9r8VKxw6C4E5RRtOXv97BBqot
	 QAocarSPxSYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF736C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 07:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167549496577.16479.9164580777501326169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540450e06d5ffd307444126810ba923e09ae2d422100d54d414f74e5cbf4c11e
Date: Sat, 04 Feb 2023 07:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675494965
