Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10D82591
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D197C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665324053;
	bh=mWPpQJGOleYoP3B92uFCUm7F2VbTigR1sQDgu1NuVpA=;
	h=To:Subject:From:Date:From;
	b=jzpMeRdUckM8myXbnuc0O9HFODQNNQayNwVhudENX1YU1xLDmf9eq2IXISNMiWpEE
	 dovjnVvdH2QjIVpgVsFDG24M6nWygzAk3W8aCTE4XUA36ODrV68RWCgGleYkXLEkDK
	 3US+GYONqIySXBLT6ZDNd03Fi+wtiPrWB4vKi+Su4fTGRw9VSnU58BZJXG8rtu9lcX
	 C9kBBi+/1bc/k2TXmnp/ygykILRQUDiV+8tkiMm4LFoBmx1bX+4DOSfk5y5ePykrlN
	 vldFxtAYk5ZojKZyU/v0/XWU+4bOgm9sA69tKA91mvPHoZ/RKAHLBsSwEpG11W4azV
	 e+khV0/6ISxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7F9C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532405335.4515.4496930803240242526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b784ed4eb4fa3e58a7e592f8361d74253574350866ce0a9068afe9f852379b77
Date: Sun, 09 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665324053
