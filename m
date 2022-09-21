Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B233D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64CF8C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663792853;
	bh=LieOSTAXP7eveW1B37/Sfxo7rvWzUpm/RVDXmdlVcEo=;
	h=To:Subject:From:Date:From;
	b=XzYay54Gk44esX2eVx4nhJblEoc4LHFxBQMtAinXMWjXi3ivQbg2ES2OUc1se+jsO
	 dzS1XC7hb7SgDluBL4/RSOTwqVogNUf7x2PoIEuOto6kW4xZ2OQv2gk6d/MDs8nNt/
	 Bjbk2TNJwnegld+Ws6LVgvd7DS8pBi+8fMPT0pMf988pdpP+Sfp7/6SjcTIm6f63pG
	 Y/+vdyYp8hYNgkXayWec+2lzAtZiKiFI6+O4nyvkx5mgWq0q4HkmPp4uOmHrXPG8hf
	 jplcPVRfQIdTF7B/4DL5EuSCydGaPQW+uUm9pt0heVo06CCzD3XVQ4YY2N8Xjm6RWR
	 p8co51GAAemiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50080C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379285331.5929.11020274451367868537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d7ca2458707a8057d236783359e98901e7cbe51ee9a96913362526c447ce99
Date: Wed, 21 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663792853
