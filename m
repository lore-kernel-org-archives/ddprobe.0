Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5BB17C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6998BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661738452;
	bh=WCAZXMTjBuXil9qfcTJc6GPyJHRDXiKbfbuJhh5LW0A=;
	h=To:Subject:From:Date:From;
	b=MAdLePwrIGDVDvGZFB6g5bZkfqdkA6guhXcZKSdbOjio5r+qXEz1+EmkVJ7QFsngl
	 UylGzRYAH2p8O95wsk4TzAP4WEeR1hsK7i9cHPM/CgZA34vIWbdIKW7OTlx2K8B5th
	 cFzXOZYPgLYMK1Jmaw6hFNkIx6X/G/OtfWZEdVEek9PczR1Z2HuhrGOoAFo9n5hjg8
	 RHaCBcrGvzfSlNR0+sBhH36wFKqbHcCjx7HjgZJ6gty/ljIb/4hmMcbVtrCYMxKPas
	 KelPOyBhZU8Vrh/p6kS0Y7UCbswXNXLhnwcqp3flkM+V1CHzfr0rW/oyUU5Jc7a8LF
	 y61v8ER4m2xxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C67ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173845232.14987.1248373980852681389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989485cac6d6da64321be411bf51f4a751395d546aec2f903abbb0cce36e6868
Date: Mon, 29 Aug 2022 02:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661738452
