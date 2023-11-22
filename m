Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D9315C3
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gi/qLHue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EFBEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700613496;
	bh=B8oSggPdWHTLQngumy4rd7AYA/hkFKNOX7uq6o9x+Ns=;
	h=To:Subject:From:Date:From;
	b=gi/qLHue5L12OLBDRsVcPK3BFNtWnIhzT9WoaL0UIKXEFG1hBX0P156yuvXgTfaPK
	 u/x61O2zL1tLUC7Bl23rUkC4gvhkIWS6rkbSxBBctMRKYnvPp01FhRrV+XAOLPoEgE
	 VoQ7kiQ+op88BwOxTGTQ6Jw2B7g4Lm+KqldZwjdK8wB4K61eDNIzDtktlwlQ1uAi7U
	 oc0u7I63cGrTabcExdJo5Ir1tlMmv5x7IBqdipuw9WJpWzd8CT+RJth3Gdagp49mCp
	 I7H2mCsD06oI6rW85gBj6oohR5H3iWeFJ1hhCncBQ1zG9bl153fYORYLLbIOzUbyeo
	 FL70qxkqq9LnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70612C61D85
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170061349642.25441.5848142417973777717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289a0c1757ced555f186446db06fa1e5a5e3f3b365fbba406091a47c9273eba0
Date: Wed, 22 Nov 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700613496
