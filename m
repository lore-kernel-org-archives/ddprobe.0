Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE97944B
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQi3XKr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FD49C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698526696;
	bh=2k0unHtttXoogwElKmhWSAUJ3SIvjmBj5uqqk150Ynk=;
	h=To:Subject:From:Date:From;
	b=VQi3XKr8EWTDoXOOVv1gmKt5lPh4C3cjymsE63j/YmzcaTHTAF2k/opiIkpWjIvpr
	 srdnpw6XD7A7gApXebQx/8tU9y9nwVN4cd5v1wKQDBatIduYz3YjYhqj4Tf6Y/4FZ0
	 ftN/KLsDsUwmTzttULvSE8BmEChfeEzqKdddUEsWohjbl2rSNA0dz9bbodFUB6klQw
	 uGOVg0dM5oV5QbNxLtQhc5wQirWWXa3zQBQQii2JQ26Umm1nEtfQTs5vTBkevTmUwb
	 NXRWBxJZeQpG2/AO45yQYxGHfvhRjG54nh5m23VmwQZkLkfRbj1/NEsQSXT8iQPG7y
	 xSMekO22hmh8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C314C4332F
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169852669642.466.14345975833274044047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5c255567ff302539de489731aa7e745da65f761e96dd121e10733b56cff837
Date: Sat, 28 Oct 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698526696
