Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FEF322B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66089C433D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667324454;
	bh=4ZsEDXmuDJTOdehxDCCUcVi1vhhIAWTiJ7cMNnOxM7s=;
	h=To:Subject:From:Date:From;
	b=Kpvh12mSpC8VvEvhkoUxjuXP37GI7ZDryi5gkzkEhZYg9YK5LFSj0z3uc9t5L73/H
	 tf77+Mf8j+L6qBurDh8J7CK4I/A2tv+Rucl34GyD+nPeRtc/7buLBakQiXjNmgwSbm
	 PLk90q0AAi73ab1qCG72tkZ2bfv3/CuRHoHXwPWr5td3tbJD9ZO0ZmVp/fNV/wlWOh
	 GqqEVV7ux/Wh0qLVBhbYWrTf9zR9PgQFTLK2hSzGX0U834sMgRRSa5QEicX8paGLy+
	 /gh1PYjb8ZCI3+NAE/Bcny6MYugylqZQYwU1IwBSt0DhuhFyeP4kh2/D2+EqpgqmH2
	 qGiOEYTkiwtzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EEEC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732445432.16290.9223944566184793149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf16ec2b207f3aab3bac13d44091439f009c1d0c098eb7d5e5942fd672643c9
Date: Tue, 01 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667324454
