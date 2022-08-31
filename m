Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6078804
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73994C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661943653;
	bh=CfLAcVKUStabpEoY/IlbnNYQMKsz0+WpuNmZI4FUSZk=;
	h=To:Subject:From:Date:From;
	b=gGTfc7geYwEcRWPKfrSztT/fjJkUAAneRU3Oez3OnJp8MPqU5Vullx8pLmLELC1d1
	 Y5sA3pBzK5MV5n7J5GU2Gi0my64191t7aKDlofamxuwVVXA5d9Z6kSiD4ry0ayhFgt
	 EM22Mpw03sxvbNGfFuCjT4Rdvl3cSWSiNXva03Jqbh+0l5tKBbOO26pDmKUnsPN2zi
	 x7zn+GwVzFVHtLvMZrJxjbbwPlj93MVo4Rki/6rkHiaJPPwJHHYmPYoV4dsFsBENIK
	 C8Wo19+PG7EtopYzatm0v+Xec97u0hgXSTxNfpZeKT6YjJG5Ij0yhDKYFYwS/ztQBm
	 PjI5GvcdKeKJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AA1ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194365334.13792.3063169519999215190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927bb23cf66daed4addfcd78c58d8b2512ff068d14eff3714419ec6176ae12d7
Date: Wed, 31 Aug 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661943653
