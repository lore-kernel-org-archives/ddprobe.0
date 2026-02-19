Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C722303A3B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771494894; cv=none; b=ikgUmXhv1tsO0kRmpNlsepGgmk2eoiGLsWka0Wj8kYZT4AU6SR5+uUQ3eoWe1GfT9GJ9xPc1WWwnB23xo2GtSZhU3/VFjbaCWQXgll33ufm70YBnbuLuv6OZG+2gRsmHPtHKMcJF8iuuymKZVxzmAEhxmwgqKHgYFu3FzkwFht4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771494894; c=relaxed/simple;
	bh=xC24W1QCDuD+zIWrTCp03Dz9qIuBphKSb9BTp+/j2Mk=;
	h=To:Subject:From:Message-Id:Date; b=GQLLrrvOG9ko8ZRuA5ofiKqIKHNdVAfBT3KoxmEre/RZdWeE9vGK1yEiC8xHkj3AqSCP6nOcxp8ycUfI+PxA1GwQDLoLiGmfMGaX8CvJPodF4nKi99XIgirMM5UmXOLUvAxbWbIMg7gq30zhpnLU1YOFH448zSQJ5qzRXoLoSy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsyrD5jM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsyrD5jM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE07C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771494893;
	bh=xC24W1QCDuD+zIWrTCp03Dz9qIuBphKSb9BTp+/j2Mk=;
	h=To:Subject:From:Date:From;
	b=KsyrD5jMMMy+QEiXIDabIcMw0+X2SN83KSCX3sWjOxATr5oRXczqf8ImwQs3K80LI
	 WQ9dejNzsxVwFivif9PQ7lhXh9TDPVCfjS9qfOPA29Fu03AR2JIRHL2XqVEUWcCTY5
	 QFizsJDOew2nfCbBA/Ok7GOFNVsuoRWmGYISFskJm5BfP1ii1m4rmW44IO+UhFK2pI
	 JAtsv/Rud2Zv8zOBlQEvYvZMUiU+/0fR1Tc3GSJQOlXF6i08jDg5lw/7i/JDccE2P2
	 15sQPgpKLmgLiRsA0tniNYsF0bElnMbw+YbXq3zPP1v76S5zxeU9eD8Ek9irENbICH
	 CfrMcYnYUFkYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EEBE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149489360.26511.13187109595241183043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518f8b75a9fe6817b222876c1fcd7606f1eacc941ffeddc3881a2b679e44c192
Date: Thu, 19 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771494893
