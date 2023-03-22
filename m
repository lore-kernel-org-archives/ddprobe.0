Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FC58F58
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 17:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA88C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 17:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679506145;
	bh=2vjiJNnWfD6fT2cyapxYiEwIPFyDD8qC9Ugrl/UDO1o=;
	h=To:Subject:From:Date:From;
	b=pIGwBisYz/mNe5SQ+SwCvARsURQbINovzy4uphf0UW8Lc3ZgUfnB3Ft3KlSTyU5Qt
	 7nvkBUynuJq1o2N2ab46/0xxbFWB6rflcx01DdmMwDOmmGTkqzkiBzvDZRznVzNhQc
	 JHfdY4484d4O+A46/1QFzG929yxUSc1wwT5EQT8wedrXaitkBBHaYodIHrwTeiwKPx
	 PFbgUNMtO16AhZ45HS6ZvmZD5cxKKjPKr9dHdlc9A4+3o9z4mfVO0QqVlcT19fqus/
	 41p6YcGPdPXW3TQvhhHohauIOBvUMPrt1g0YSo1pV9dtutIKqqrNYhdxy3Ent98IeW
	 rfJ6/JAHqQgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74E3C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 17:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167950614580.9531.9312820946812744428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f09132e1ecd7ef5c7c3cc7b5a56bf4803b15be17c53d02f5314c7eef9d29c9
Date: Wed, 22 Mar 2023 17:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679506145
