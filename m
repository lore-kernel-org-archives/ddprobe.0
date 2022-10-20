Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFAF7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B93C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666237853;
	bh=ozzANIBZA/N9lL13TdC9dfYiBePRBuUOYTZ5wQzeDK0=;
	h=To:Subject:From:Date:From;
	b=cwojDnsTcxrXX5fIRiiizebm4g97ujw9Mvm3pGKHPOvvh6xJ3loV2RahB1sqoj6+7
	 ZaE7pw27vbRLjo3n38TqQx/GcRNi8FoQz5OsJIXpnBq7duM7LtrSeCDSQ5ePznHhXc
	 /9BhNJo3N1VcU9Kc+lPAfUJlj9v9x0iZMhOMmUL19zam5pbHE3ZQSeBstjKDV/HUSD
	 1Y867qhvEKSF6e4oXuyvVJwd1QJWGZl5Ra7Yi5CkxAPoMzFhgNci5peYQeObySq2j0
	 Tx45kDZ4DcawqUmS2Xy81B+KILHF0EfDSvxwaJPxOgL0CATvexmZfm/kMjTU++udwa
	 1OOjjTTAADtBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55420C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623785334.12612.12582843647332777119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9ed85e7e45352b0754f56d02b2d57cdb308ed4e9f7108d5ebd671ab7994836
Date: Thu, 20 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666237853
