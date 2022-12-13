Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24FC79C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F59C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670957487;
	bh=wrtE3SMCk2zS7vCNYZj++Uzh6/ZgV2Jn1csEic/9EKs=;
	h=To:Subject:From:Date:From;
	b=HRq8CPnO/0ktlmOlasnHTo9x/HHDNTOZ3NVywl+p3XC37zAcspLt6hhRMjGcb26MW
	 dvH/N2GAZLazXHJHStFD0SyqrMACEFi3FAVQuVgXHqYpp64DqUhlkjoQNsqpdleUuV
	 pJiDZEOfDep79conBAW394rs77Xn5srRd+iCU2LWLMrtyccMchGUMEq8wxVs8I/3NV
	 /W9svGxuIwI0TZByPs7GZaE+9p6DnfjVyFZAiJXuz0SbT6XMui/ptemOxn415V082e
	 efQT2OVNvbiDwDdF+VW/Ikf2C41/31zcfPasZ8ggskClNX65Z0b4wuJqbghNYELOTQ
	 G0Cth9IK0jerQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6221FC76188
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095748739.12344.18016500965242286472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d6c4f2960614a9ca8df67f5a5bd440254a4be3c608bf9f3bbf687972261c40
Date: Tue, 13 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670957487
