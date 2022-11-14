Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10CE10EB
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DBEC433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668403254;
	bh=xlp+KGaJSk24Atn4U4/qHIPOmkNFckZz6iap/GQ0VCY=;
	h=To:Subject:From:Date:From;
	b=OSTDMFRXVh5mUoo7P32gUbOvb6P5puGp6PslYMeFl9f72ZmOYPyDqRBSCMIqXw5ou
	 O8Zz2YgKJpaptWwViWw6TIiYrV94eONYMaX45Uwo16gmhsHbP1QYx4V/HKWCnmB2lS
	 IIqRtpQY4fOaWxRblaL20FlaAaitPgXbSaKOu/WIJx8aVWGZBWLFzS/+8CUdi4t/56
	 Lw75Etc0yJL0IAIzZpgQqDhwTHS2gBR7d50OnIKUzCxOD4claMHTD3r/1MIGaSRht3
	 ASG5SzYwK91WI2f/A09vTfjO44VRLsq6WI4DInt1947lLfErxpiwAkxV/b86gbapmN
	 cXA9UzqoPaSvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5552EC43217
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840325434.7419.16506813038186662763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d979a08f07d85073d1b6b669a6a812e2bdcf2be9c9ab5f5f07323a50a35ec40f
Date: Mon, 14 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668403254
