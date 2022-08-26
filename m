Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF833D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84464C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661519452;
	bh=nlbvDV9gpU4P2xaZ90uFeG7WJG/eziEFO7WQt6d1gh8=;
	h=To:Subject:From:Date:From;
	b=UiA+/i/qN6kZxGisXgy9/dUW2ZpbXO/RXh2VD4TPSsYSS8HLwGfGUwrxH0BzHPiuV
	 PMbyrt3IllPaOB90X2GeFFNkOA6sSFuxB5MlxnN91iQeetlHXvR3xaIHkR5zKRIMX4
	 3iU96qYXjJnzaM+1N5MuNcfTGcRP/EzXJWb0QDJ+R8W4+gO3so3FKyAMZb8xlwbF6r
	 0LGg4NUDQuTy4sYXtpywzRNitL0Y3wjigTkU8o4JpO9qy83gYQ7NN5hdnlJoINsEtK
	 N4F28pTE7gjj7ReASd0CiOiT1xrDJvxlCBksPOtT4V5pKxEc0j0FJtnvOyGMjoWfy7
	 CmAGxNq/grp1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689CCECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151945241.8647.3869103470417575614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35112e8db35784d746630cf13f4cdce9a241e4557e318a34999836b77f4391d
Date: Fri, 26 Aug 2022 13:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661519452
