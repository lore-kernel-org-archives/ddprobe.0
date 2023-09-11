Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A51E28F9
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 22:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6246C116AF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 22:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694471648;
	bh=Rs73bJC+fqbQEJDOWvtbvE+UhiXX7rCPajrB7+OWbFk=;
	h=To:Subject:From:Date:From;
	b=aUo22+uhCoCVaPQSKNeNPAv1zHQTR8TlezGdg2FhUBV5snYzXikTU6Mp9thTb9Ebk
	 QVPJjRLOdUSvkHJfvS1g6rNm8a92O9pSv+D0FbsEII2VbkHvBBJePiPhGHmG0EyznZ
	 B4eyeB/8vjHX+wG+9y1q2HMI6pJASJIuzd1K+92MSYPWXep2xREtQkOWb9RsF1QqXP
	 aca0je2E0kzwkarBrYCbzlMF/qE/+ftipxbRteWoO+/ku3oKM2SFM2c+21efciVIPo
	 oCxdAFeNIyesz7i0pu9XHV5dWItE0Uo73eDmZGw0Dg1krRFvIP9Zj84UgHVKmCaF1s
	 Hnhpu7GSkmaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E2CA0EC6
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169447164868.23736.1380134272921031224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1750212778b31faa91c9cf2ed29ba342c4db9c421ba7bd676711e098dfa5a13f
Date: Mon, 11 Sep 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694471648
