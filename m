Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0289F68B85
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt21KxVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F044C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702578496;
	bh=9mr9dzyqG0QOajRM5ntHW5MwpWL4UwWh8rbcb3+k8aw=;
	h=To:Subject:From:Date:From;
	b=bt21KxVtWADMwCh5Prhg3M6XLg7nmZyGvoYCeE2F/PzKdC8aOrewbQ9nhZjO0253P
	 T6rta6mbTZ+W8CqhGdg2w2+vVeOSi3nyZVkCKvtJ6rK7xdQHkfzIA+8Ik0A5ie/HEI
	 qITDZA8qHRB/aqaK9BfV1FOfIF7e/6z3X9Iud3qv3dV9TsSI+ym5wchSxnKtb1o/Cu
	 kT4pJgx7lNa6Tfi+mBDuXf8n81zd6TOcMxAYVBuR2/DyTRgBTKPp2g2EWWEoA1lL1/
	 Fomkx+ZPD0mobIAYh1sxor+uBE7Ws6xrP4vP07dGcvQ2R/yq86/3WTfVq7J0A/9WJF
	 M4n8bcGKBLC9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A58C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170257849640.30549.2083596449418815253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340e512489956a55e55be0b11702713291ece36b398a868e6e5f410bbab69a0a
Date: Thu, 14 Dec 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702578496
