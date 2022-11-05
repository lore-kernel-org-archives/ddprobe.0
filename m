Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56011FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C74EC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667676654;
	bh=asKhISnR9COlmPtqwbDKXx6eWtIIIUop73S6S+2cUOk=;
	h=To:Subject:From:Date:From;
	b=MMqe3Yepst4eULOECKkGYciQKOgktj77UhxVKRREVjXMQo11H9zGu5MNpysf+UvDy
	 VHqzKIJkfV7uHHN1Gz8GCx995j9DhqAwvFraCDPLRU5AGU+U6fOksRA+GeNxOM5zOb
	 24tpZD8zygE7w6HgkYoz+kMsMSWD+H7aXyL3SA5fQqKL7eRoNOklZ6VD6Xx9B3vw/7
	 ZsUZOFmGKMgM0HWtTfAbPYqIVfCIEa0QGldzUx1AeYyzj34WWdNTbhYUWGZeX2EWWy
	 a1WaRfg9mwFhTndmR62WdqXSarkYnoExtdyEyXVYxaTzAXX5lY5mQCINzxqZ2STCNU
	 IF5PhqdRpwncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7DEC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767665438.2721.5757526637514991833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b55b23df47a9c739287efd905f729f1834ad9e7897ead5af566dce89cc7a97
Date: Sat, 05 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667676654
