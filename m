Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7141A20
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C0DC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665217853;
	bh=+LWrUULAoPD8hGDhoINyQwQhYrNQ8MlmiPCruFvZctE=;
	h=To:Subject:From:Date:From;
	b=U3oxwonDNySNE6W48xynzuzXE6RpUpR07p13iBjOs7AZAtlAN/yY9wp/r+oPc3fQl
	 ykWqNbNLY9OvbvMWc7JW2KAJJc7u/gvoqcHNpRDzu5sZLoT17nhVptKjRNGizmyDtm
	 fj+D0yvjBWPYD+R05ZqFkMWXq/Sw2z9Oip5Ez3iH1aBT2+SmjUXzlfmzC/TIMKcGaK
	 FvzGiQLt3KwpMrNnv/MeX5V/jUpr5vsv3NdRNBRBej0TaZ9/oKJDLFKnzH5yf0j0Xj
	 vC18quEjxf1ARrmxTk7DUkIOmB1RH8DCxjeIpDapYdtOadKObo+PrtxfXkZ7L6KtVq
	 nLIgGG7m+R9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6919FC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521785338.24236.5980931271275847014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31b32b003250fdcd3f360377e6dd5c28db7e4190dde0128f8cc2a7d06be5f6a
Date: Sat, 08 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665217853
