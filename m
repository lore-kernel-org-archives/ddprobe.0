Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC543185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88051C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667646054;
	bh=L3pj/YIgg1YozzhnThUCnUxCrWzB/1sqWaSPY/1DZxc=;
	h=To:Subject:From:Date:From;
	b=iIKRSnBS9hGilStDEqtOlTmYP1hr9s9JIqaow3erkc/mt1ZxkuJIbvQ0mNNMX4A/q
	 Z99sxP+ba4rSkLJ/F0litK+dlAc5IP99jZHVHoTEPkk2y3UwWUYKsG9aO6V2vzoVJN
	 IH7+SFHag29cqawynqrMPByih7oyMws/l4v4Xg/ejMxNKBkf/4YRv53jXwGV6WPUBE
	 Kj90LUhyNZdBdL5SQpbi1wecKxmoT3p6YwGP1Dq1ERGhAkvkmxlucv1JP/J2tS/r4d
	 nptRh9+KJDf8jnvWh7OGOKxDH5eKK5iARHeJwQQB4CUA9ufqzaGW+pC4eZXJgtVsc/
	 Hn5dC4RtkrIIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CA2C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764605436.11922.8438388756155969037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643f8f4d5a9d61eb336a210ba313fe9e2ad8305aeabb0e77c784f51d66cb2c62
Date: Sat, 05 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667646054
