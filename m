Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CD62F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714F1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663355453;
	bh=fVqToU7uOiosDDmQnYMCdUfBeWHFl9V6Usme6dzK8As=;
	h=To:Subject:From:Date:From;
	b=hSK6sn+FurDaLQoH2XFzlbZb9E5yANMhKaTDDSFcjE9+NYMvpNHt6i+OXnMyJZBrv
	 IuAO5loIcmnrPGhD7IkWH6F9jvgdPpL8YWMkEvsYBONdARUwk9c+CRrkSS/ACL0yJ2
	 buse9Qwyh2y6X3prqbND3e2qmJM8WVtIqCyI9uhWgioZSs0knRM4GOaYlmlH3VuxNJ
	 TOBo/nJF3gX+bHAa4HSQGadnBiAyCaW7d7SYFpEmrjoIkFv9vEQhErm64gnG7e2PDE
	 PAOflLOxxIG9XHxcJ6v9m1swWDuH0lsF/H/hFjQ2/GP1U6xCimFw6406HbddBpSEAM
	 pt/Qw070eC3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5679EECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335545334.25133.12240574324283220920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a18b59945d3fbc96614cc66c5b720d823cd88dd12a5d29f00ba3437770fcbab
Date: Fri, 16 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663355453
