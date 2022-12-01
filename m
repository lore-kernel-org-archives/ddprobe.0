Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBE51C10
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75262C433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669900854;
	bh=Oc2DmstGk7xllKLWA6LKjxClYKoLH1nRkfy+JoH52fs=;
	h=To:Subject:From:Date:From;
	b=Qkh6m9Il3tJGhgebcFj1+qkPv1JI1ga0tGhUFs5KZ0LstVScYoNOmJZ3YTc8QpsTU
	 RoxtCWX4XZwuw9pMhyUkWHTYBeVO+LXIe6F0+xP2wypXddzN1CfrkV7JIAP3R5w3Ff
	 7FYfq7nY1heIl9GfVea7kdARBZ64cw0fH0GmviMzsu4ug7ZZMVhoSWMZgtfBq826vr
	 ETUl/BJCcWezaOYIMs7wCFs+9za19AUUyAfERIJgWrCSc4nImeh3/4uF6URXWlj5ZM
	 G73k6Yen2o9k9tvfyh/EDAYwEFfEQmjb5aOkWdpNGYCcdIis5IU2TqHtfSx3tRQ+aT
	 bz4ZfysKh6j0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D42C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990085433.18287.3353365425208833305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcefee0690b1af590a2019c2adeb9cd4bb3d47d2f5af2b1ddd4cf9ebe0c01ee
Date: Thu, 01 Dec 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669900854
