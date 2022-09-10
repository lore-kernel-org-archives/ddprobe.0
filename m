Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF6D7E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BF7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662779453;
	bh=M23s0Bk6x6VZI4/JzF1vg43fDiv9wzYDR904wo44nkg=;
	h=To:Subject:From:Date:From;
	b=VCWSmaS0lS4QdAqEQqTajgZn6LPfgtnbj6VOtkYjmUBnMbks656p8rxlW/QbtpJEC
	 TCu35cHXSXSlqQeiFYMuhIHeRRx2+rypfubSwwmHsvKknJmXhtsn3KLueL0u3pKccB
	 zCU33T7Be2h0HHzDzek4Dif99FwNs8IIgcmLiyxY6tXyBLuFXWVLwHTqSL1uKz9GNb
	 ULhcas1IOgt1IYEdPDqWVxfeRY/FOw47X3aZaB8RNHgwhz0YJAbuz+fgul5HUynTmF
	 qdzHZXOcEC5LvmRjTyL6MoPltbfKMMLhA78zHiwjCe04Dg5xG2VPIyLQq+Kwho4pgg
	 n6fEXLrE+24aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53590C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277945333.15861.14419824410727609235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d3f0ecd3993896d43c5ceac8bba52fd331fd74291cdf4e3f7c4623dd7d88bd
Date: Sat, 10 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662779453
