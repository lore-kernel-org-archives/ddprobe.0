Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B347B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81949C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667337654;
	bh=fSmWNO4mUdKEXOxpDMYOc2P+Wdz4MKt4bAtYWRNRYko=;
	h=To:Subject:From:Date:From;
	b=Lrk8yqZHczehVujY7iLygoJtjKpBPtf2VP+u1sph1KPshgZSIeyihXHN2ug77bTGe
	 oHB8RjbqUkHiy7NlJy8l8i7Pj4HVD+VcRBY94K5WnXCD5iLteh810wEMjkzzw9lwzP
	 yMXuziWIqED65Bog0VsU2f4ZiSDIkUQp4pAJFZsgg/6fYrGXTiwyAlU8sqa7ajoPdF
	 EJpJI7pVCoVKDW5mQzVwc44TLc2fnoXLFCUTzT4l2S1CCnsc+0HMKlIEjxbWmUGCbX
	 cnTROql2CM1+axp+B7yf1t+LLXljHftjrzZ2IF2s9kFHFPI6wxgfIaNQaOtxJ9ZpAe
	 1jSmeaRMv/i/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57103C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733765434.30473.17142877446913739330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9952fb49cad749198fbfd12280a0595a3904857082c30406cea65b6c913b2a28
Date: Tue, 01 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667337654
