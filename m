Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0D020F2
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BA7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667215254;
	bh=mbx5k7a6B010s0l8WVOi7uXr0wKdIdRrNJyJ5+gOMBc=;
	h=To:Subject:From:Date:From;
	b=vDxl9XvOa81uCPJQnOvluqQnfECc0+HK7IlErKGePlW3aOUX/X8RF5sZUjviTbXSX
	 Ra9bVxzEcQ09KAz5y+OqnJC6RP7YCxIX9FnCijTd6N8+VClqNBKveXNSkS/RlruJIE
	 GI6ofP4x9zMfOpqPG5gm6L77OiOytICgO1JWp3PI1PIcoKVN4/gBx1ASkkobRR+tm1
	 ufQ0YeNZa8kuypUtVK0fal4qAiniQZXflRSdTWaB8KXVluqVvhD5h/IsHoTWyFqNuk
	 s3/UjiZ7ZPT+1WHAgYda05CArpmuYtvMGKl6FCCDs9T4/b1zhjEjCCY+TsN7/FdmF5
	 4Ub7UUiCbFpcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D278FA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721525437.15120.5591523355830427069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c110285172cc26fcaad2121365e60005b0f4da7fc0083e32474bd3ae115547c2
Date: Mon, 31 Oct 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667215254
