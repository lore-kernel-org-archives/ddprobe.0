Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444AA10947
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK+sr0I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703620696;
	bh=3gq8BxQzHuYIPwZRXM45rqpi6h9ncuLoYZscD0aUGyM=;
	h=To:Subject:From:Date:From;
	b=FK+sr0I6ruyUGOQSIfMJnK0iPa2z+LusCs1vhBnBswb5mpWDv0Ml1ahj1axB+5MWE
	 wj5qurNMA1r5XJF1h+GSF7OMLZeJb3gAKAqTKCDn1VD8Vt6fvrm+RVg+cqh+FElR3e
	 AbUhI454AhXD5NywR95xSeEClBVBMW2n5gB8vJ60lKcBMxpRr8Wy7wkOMzEgRbKZda
	 NAq0nNOngCwAOpgN8Aqc/IxBw+eZ/zJdID+FrqDc3XQxf/2EmNATvZxPziIxaq6u39
	 1U9sFsYR0TWsj/B12dySrilUi/N3GlBNC4TGrNRwyTQohUbbgyj1MzWGWiS0g9L8fH
	 7MCOrEa1cnpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DAB6C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170362069648.12326.7652999363620877921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68e96f2f97a7d809008565f3498390ea736d6c7dbbb5e656a62ad919f8103b7
Date: Tue, 26 Dec 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703620696
