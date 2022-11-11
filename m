Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10E7368
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A87C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668196854;
	bh=Wymg///qtqq4nq6eoAgADypF6DjsrV3liad/r+rb6iI=;
	h=To:Subject:From:Date:From;
	b=NepB8JqlLHRRFwUQVMskIXfpYYtVe0OUr4ooQTfkWkPLBDcwMVlqXkYXWqHT3DT/H
	 f+RpGzC8KZCgbMWVcH+GpZ0VokVQEXL+DX/rZsHwvXDYuwBlJfxIqLU4Fj0tLfFbE1
	 8nfl4mjaFjOZkpIdHYHp7hDh7x6ON5YsmYs8dnRkFDiKR606tzX7UWqkdvtI1i8+aO
	 OOXPLZjyamT2Q46rYcWcIzB6VR24jRMjX904GQaCS1icn4Ao2Z34xtPFa0lPXb0B3S
	 h8fFujtv+KqH+aiwiXIhHsLRtMgylh+oo0pMdmc37X1yMFco+HQvQM7ay58c7El3vv
	 zaE43pjFbJmlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5900CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819685435.15649.10839009739560723214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186908d99d3a23261f35376232e2e649d2775aa8610bfc0707702101521ca1cf
Date: Fri, 11 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668196854
