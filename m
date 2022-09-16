Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB91E6AD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B43C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663366853;
	bh=9YeiEsiXoI3lanrwhdsK+k1O/hgObtG7BEcLTztMWxY=;
	h=To:Subject:From:Date:From;
	b=C+OdtZGlI/00ypIYoJIlVCiV19pNKRNHI8/0IJC9/T+7JudlCqXBQCj0p+Gu+8uGf
	 av6qYQjrDZJwfQfrWL0plwX0bmejJznxmXpWdbSXRpnqR/xdyP/0G6QByGhck3eS2B
	 u0Zcc7IH3zFmRwGEemgODA6LP6P9DcO8uJTvtkFQXAx3W794aiYNYeQoJCQcerK1U5
	 w3S/JESDyEpLrnJU2rjEw0l4y/2k7F3UbMN8ecnkCIhwLJbrkwAvXvQagHuVvw3ilt
	 rfCZV4FPxF942/Uh6IxWuzhyLR8kP+lDRbAfyVCz2uX5sXUmZqeLlN7PL7ofAVtHVw
	 fklzyIpc5Sw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA25ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336685336.11701.5012230102655272195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c907f05e45cf208308880f407727db21bfad8ab20cb65b611293b19cf52f51
Date: Fri, 16 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663366853
