Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FE92917
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 09:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD973C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 09:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677578165;
	bh=25aueHs9HkkyR+ElO6OSbUdldPahmWX7c3MhX9iOBKo=;
	h=To:Subject:From:Date:From;
	b=lcsf0pYHao4XITINJ8aJ3ctQRbvszp29uPBzVqBp8kH+6uzGByvfWyq4yJWz7udjb
	 Qq3l56l6apJE/nfU/CquRfRviByh6LrC5Q3r+Dq4mtTTY/401LZvorcoWvxB+QiN/k
	 DTvJ6x1uPVK5B4K1U87+cX50cjEfm2yX7cL1CQ8a8JvjIA+FfVGYz09Swbdr8RwPK0
	 zlGwRXqXQiE43yhJyWgMLFeCD/m5mxknP5I9wslUNSb1FBX5rYyXPZ5JWciYBu+XG/
	 KCRk0olHZyHWVn3vTumwyqrRQywJY6eAg/jbyel5RmAsLvuIngtBoD9NJdu/tit1Fl
	 BFiS1X3nxzG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2982C64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 09:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167757816572.3455.5720587841409442887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b716829a2f2c73ce558e676a917436e9fe3df5328f9d666d41b37c6e8943411
Date: Tue, 28 Feb 2023 09:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677578165
