Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC93ED8
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 00:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DF8C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 00:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677890825;
	bh=MksY5W9o5qGd38GdHxVB5VC8v439uOrUZR+RCYFwo0o=;
	h=To:Subject:From:Date:From;
	b=NOyc1cMQf5/KPi9YHDAFMURhG7WJDJarZ//w3D+ThWdLvRWm/d2k0a0VTyNy7lIWu
	 MGsx4BhwRunvWpPsoiaUNV8aV36LHRtm+PtqNDPSAujehQ9Iy3g/b7gNAvvW+vQiEQ
	 1ukQEKKd2HRS6nUNZwOFYthAFWF1In14JB/8nfT4YSWQEkSbUIGaTEanlaDM7OYGly
	 ukKLH3C9LCvhETSQWEOP8T6MDgJnSKzLDVgQtGdmrJJweh8nExsnvSt+oMD2Tk8HhK
	 84+n1vsOWBkk4v1qnHfgtq53XcDLAsL6iKGd5OqUeiwVWc7geTVnv0P35keVWgueEW
	 gntS9FyyN2Fuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA015C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 00:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167789082575.11383.7689394727882613423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2939eaa803f6aeba8d540452edd455ffc070c1f2ac7fe9b6cb7dc73604d3a64
Date: Sat, 04 Mar 2023 00:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677890825
