Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC54C7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72898C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667306454;
	bh=SC9A87FeG9KdCYtN9D1BKUKNBOdii5aQhLywS34tCPM=;
	h=To:Subject:From:Date:From;
	b=fjm+1NJKtib6Dugr9iO64eCOnxwythNwkIJm08ObT3BIUZlXzySke3RE8rpvJKKEZ
	 MxH918bbuGFELWzZ+1/jHBLC1f5dnCl3JashJzO+yGCTK18Ek/eqVyZytGZx2ojtMU
	 tX5+M8UPS/UjQ8M0aYaaBgBlCoKrZ/N4ASA5FcUQlgXfaGVvGKaNDqh1b3swMhIBTS
	 +ef2xQets2q4m48SeN313hNKEAV2PPYa1x69WgEqgabwSFZg8+OFI+Zabodp5te5Ae
	 wrESe4k7SkXgGpEfg0FfDvRFJUGFG1Bfsc06wG5kfD2diGr/Y5/1dHEtvDQ2FI3qPE
	 mJbvHR1/hiwbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55274FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166730645432.30830.16388678596732094136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594ea3b92a3c047e71c86a1b1a4c0b92fbab3ee521deb87f6826d6f5c8bb91f5
Date: Tue, 01 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667306454
