Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F1E1FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812E4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671610887;
	bh=+EBrcB0Kvd6F4WidKKgw+0K3E0IpX9sGLLJ8imKpSCI=;
	h=To:Subject:From:Date:From;
	b=RV5i97bpIkmlTEL2yclOY9Fvf6G7ZUIPZDzEm8QTi6qPDl/wkTgfNavop8K+VbxBx
	 ERJNTBhLRqiP0696pu/mB2iDmEBzHY8NsFMzcVf+FxRepnGKqvhHg1XC31n7eTCJuw
	 eHsJRaREMvTHbhxccXwvgeJ47vIsJ+IiCZVZF2qD0NzwXdqYnyfAQj9h4Joi3LFdXt
	 GlV8u6d9PVkHFS98q9O6zTA+dUn2NZzUx2giM/6KZb4/4koCvjQ+FCsn8QmNcbuvYa
	 EKwqXHdQYFhLeowpBBFcu9MKhtEzkJ5jFGh+Qv95EUX8xPLz9gee1gfdSwF5ELgp9n
	 KeVoodgfISdwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E7EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161088739.23558.629320003628024600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6591b645331821c5249d20ee52d4e86502913f1fe337e995f1c06ff4b03e02
Date: Wed, 21 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671610887
