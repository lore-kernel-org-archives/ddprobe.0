Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B27373
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 02:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF86C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 02:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689302468;
	bh=fGsKTpjDLp/sxk6QR0Xt1iUhV/kdbXNuS7teNDLS6pA=;
	h=To:Subject:From:Date:From;
	b=GbYOYGUfYt3pQhbJ93Oes930rngXQZSmKC2ThYov8P2oQeZa45FhwzTR7Sp8p/8SG
	 c9ZSbVeH/b7W7Pw+iCZHC9eWnzx+iYSXmgU+NYotT1UDD74Nm1VblcLRcKefBXZC8p
	 Rwx/nXC2EntBVZKTI3VJXAcuDlGLfJosw3a5ZXHD9TBS+JW1wSNurMLQ8LEJQwADI8
	 c+JqdVXUssa79Ru67y6Qi9lyRMiaWnfzN1+9jDgBJQxjEUOYj5Cc6MiuD2f5mzx4zN
	 9rMyosWy7xBmb2IVpGxus+2wljW964QNd74ErMlbE9iQoLLJNs12zdpmL5KcsaWEkd
	 gkkYqaMiLKFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A61EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 02:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168930246870.2627.4195810311122169711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b495625dde372454f5918928990c61f8bcc6d37cf05272216947f908e369bff3
Date: Fri, 14 Jul 2023 02:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689302468
