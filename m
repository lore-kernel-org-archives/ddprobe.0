Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8F04A00
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF21C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665087053;
	bh=rGplEsTysc/7v4RcU2pDTVMRkdo9J5DNVuqhB/nL14s=;
	h=To:Subject:From:Date:From;
	b=bn2Qs9/4tO8xjsxbYpa2is32FaXOyeML90LrcOUDCoj/oynBD3tZBapfYARGuF5/D
	 g/uvOIhnCIeXWseQvJe7ONo8G+C7l4ejrSi6+Xj393xhntwjcgJypCqAXAhd0Kguwe
	 igAPY2NTe0JwkkxvE/tu0Y7h3NFZ+D22fJm2X76GoL/OKIKll/c9ziQ3UFRzVoLlXw
	 GKS4F6QBm3COGcWEw8mMJYHQW5gHBEOoEGFW3VoQ6rzYVNxFDdvX4C+DOJbOyclMEF
	 xgGILiPGf5GXMHqfzyRdEGh7um8tCupgr/29fbrogeqj/uLkLplZKSF8wZRbv6rANT
	 cptvNSqpUENbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C4C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508705357.32725.18254120349982691814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80794c9b4fc8f9f463d4cb98515b91fa2f47fa7baed33ecff023cbc338075cd
Date: Thu, 06 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665087053
