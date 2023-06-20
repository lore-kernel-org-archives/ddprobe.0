Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF7D1FA9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5C4C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687240928;
	bh=bfvuumv5eU3h+L+H8X3DgVhgE6XbTdYsSS85HRM1Ujg=;
	h=To:Subject:From:Date:From;
	b=rvxRtKQIJlhxWX0utkaod3afmw0fCEfQPdMntBc4u3aeOdO05Be0bjwqwUD3MwwER
	 pEs1qElpkHVwpUQ0bjVoRlAH3Uy0mPWJqPLi/+tPXwfzcacMADyp/HH3d7rsZ3Z21M
	 IWU245MyA4bAoskg841wdulgJ/ib6Elm0O8ks8an39OUDial8C8Tsf24NwcXNOtk2o
	 ZL5EfmDdVQohURAd5jexsyX4Z1OkAg2Yhr1exIBkdtfc9nGplU5frloixJu9MG8tdG
	 ireAbEH5YS8LDblgi0OR6yZ8rB2vKi4UkpA4Z7JD/7ad+olf71GaMqPpOt7LboP6AL
	 sP68NeljH5dFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4D9EB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724092876.28788.16318538738279746138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd288334964cc2ce1147a4a538d84c618e592f3bbef63d3916d2e4061c67650
Date: Tue, 20 Jun 2023 06:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687240928
