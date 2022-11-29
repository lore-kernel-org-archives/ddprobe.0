Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA917370
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6891AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669696254;
	bh=KVcyCZgUfBGVBJ+gUGa+z0pyCngoyhxmKCitYf9AlKc=;
	h=To:Subject:From:Date:From;
	b=Ros0lINtqIkiNmFQeT3CY8/Rz9JX5YUQVIZzEqGabtiVdsc2ydwJWKDDJ1L5CFrF/
	 xj4TBr4mMSWnDm1UY9b7EBNWmioNtQw/dPV5s8CmaVTIVe42v5T3yy8T8AbjI9FjWK
	 CAjaVfwbI9jCYWn81NZq9dSyF9YMXdExpcnGGSFbOrC1WCoSLcj1LoFvh5CoS00l5X
	 aIRnnvXqdsmYktF24dmBTjBhEOE9d6pgfPHaCbD3zw9s8AcZ0QJgMjKOrKitZyvbMz
	 lcF1SWBebfEvCzkh99CXD/LXVOKiafEsvcR9CKeyrsyp1yvyI735qtZyuFfY7GBH6U
	 5yTzEgS/YoCjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5001DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969625432.19506.13961944195813633852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ec56fcbfeb93a14f4880abc613241f41c3e435bec552264b4b75a64c1dc366
Date: Tue, 29 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669696254
