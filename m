Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560B62D054
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 16:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm+3g9VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F14C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697561828;
	bh=1BusSk8hxkuqkVH3Mu8l4lR25FO93AuTU04fOQobA6c=;
	h=To:Subject:From:Date:From;
	b=Lm+3g9VWlRifznicuc7QxhefR78L11J4MgC7Au+/rMPTGSZOSXbOoF5J/sxQcEFOd
	 rsRmGZlv9cPyhJfp1rxuk8YFl4gPsREAW4apr7E8a19Pu/rD9ABnGaAy6FhnHZu8sl
	 gO/Jq9JJ0hazqQZR/swipLEXCgev1jTv4b+FgGT4ZDoiEiWOXW1kRPdVaDskLdGsDs
	 g8t4DqPToFsIrrI5PXqto1OTJAXMg6W59pkdHhcow2irBvs1Ibd60XKy1Q0dOfmJaN
	 GKGHlIpGJv9kyFYl2oqcp8Duppe3pOf3llqk3wR6nfM9zUhfR7NSTSUJH5HH9AiwA3
	 5Q9xE3RanZu0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B12CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169756182868.10641.16891108430186784327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d221fec1000b280494a44c40bdf88b86490c86c451540b1ef4a883972d18dedd
Date: Tue, 17 Oct 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697561828
