Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12E92564
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66319C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668589854;
	bh=YzZnHikyzNictTq2CqchRgZ6wqtifDVeaBxmaNFWewI=;
	h=To:Subject:From:Date:From;
	b=L/OUDiPE7ElwBy8JBDUeorNWG5/qchGu4Py6EwU41Xms1LHT52h9zHNhDuK8xcI8Q
	 yxNW5JQRpMi3RI3R7KvwZi8cFR66cBKr0Sp0EOH/btS9r0WCYriE4uxNcCW0xJoIux
	 NHlIEwQGKAcmPj1CAuwauYPshnEgaoQdLehSiBoG4KL/2vpqPbZeXHAabaqgBtFHYC
	 PZs4tU61QuyYExPf9XGQFoQ3pEmkUOEroLBdjDZdUPJXqCsQRf9+592UAzdDtcr658
	 /xuqMVyorVtV9nHjHPjeCJPqXX0Vg6DK+NhYmj9M80punrJrKXf4OTDlLdY7qhYDFv
	 FB8hb/aRJsfkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507A4C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858985432.29213.7301225495923000514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f8d69f0d80379f9309c7c2b2420ecbc331fbff6c9177b693b0858cb940134c
Date: Wed, 16 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668589854
