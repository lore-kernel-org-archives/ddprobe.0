Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668EE5223
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 02:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DFFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 02:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689561068;
	bh=2CvLxoULOb8VUryK411z0DyllBjQFUvXg0bdQu2b6X8=;
	h=To:Subject:From:Date:From;
	b=Dmd3JMIVuXgUU5shagTFutJlpfM9Vw6jPSV38yrtItlut0NF/YQj16Da7/cPX49dG
	 xayR96yS8S8HqPJ64sDtxRShc13G/e1aTKcem0rn1xPTreP8OKfc29AdcQLg/AsZty
	 jpe9w19+MyfLWYglhPMbumKehM4J+DlZk3RlUPkFw8CTmcIzaguFlHOC808qiklMvO
	 huWa0v/N0p2d47dWRRdTgkbTCWDcHsnwx5GIuQkJ/iKi0Vqb2X7gO1X3vF7w/y5cK+
	 DR9Os+7HE/yv7IcIZ1W3eOyXdkvnmYzRT9TUyxikgquR7pAEFhSBZpOsqMXDoLrju0
	 4eVO3EJHutxaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC54BC001B0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 02:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168956106869.3488.12171044826643632462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a688b8bad32545b497f9773b57c4ddca4557deddbaa0163545d79aab783dfd
Date: Mon, 17 Jul 2023 02:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689561068
