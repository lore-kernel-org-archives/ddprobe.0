Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3178C1A71EE
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722410154; cv=none; b=eAEq+iHs5v+l/KRvfVHQFvOZAUPo//ckDaypdMJVQ0jfZI87n1qo2RSnmaqg3CtTuiYQ2yuLSkUMscLvqsysb8lFhiuswtE1xuQk8ML9yOh8xq0zrl+4zoS9CagcM09HWqxeLauzj9hkXm+9qwtsJUgOx4KKU0MduHskWYq7xIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722410154; c=relaxed/simple;
	bh=UOkqMcYfHLXiRECQ/MP0PAHP2uxxOnPA8cZFOTnO9C8=;
	h=To:Subject:From:Message-Id:Date; b=EvIh6FqEI3LMNRsxLnjPvo0t/Q6ljAaCgov+g6D2GIZAZ9JxTgxSsMmZIRHIJWkpj7E/mmBATGbsQNzjpKdneg47HojXeY9hRvqjV/AIaXZuGz1/URrIvnLdBxkOuK/V4vaQZXDDlpki+r2zlLJmoaMxgvmgx9J2ACxDWwxsGSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sgb1husB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sgb1husB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7956C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722410153;
	bh=UOkqMcYfHLXiRECQ/MP0PAHP2uxxOnPA8cZFOTnO9C8=;
	h=To:Subject:From:Date:From;
	b=Sgb1husBNKf6tL9PoH2wFGL87QM2Ma4mXpg9riO1EXPIf/oS28xWWGLOLXU5/2nwB
	 r5d8pLmmZTtfvsMfrG2o1Z8AaI/xwqBRkioo1c81rd/xubR6vhkDssO1O8Iu9Ryo14
	 M/iD/0rmY0YCTgLFuDJ6iBC5W6OVZWGad29OqJxUaB3TxcjPwNsA+HgrqpnGkzeG53
	 Exj6SSLv+srMxdJTlvRmjkwmTYc6APqZuNw1VhuY2BwM/KaqFhsq4vuSYs1V97lDUg
	 7PBGuJ9q6jQgm+3eWFoGkzFXJTgvhSut96JW+yk4CmxnzhXeluKtQQABkRdmjc36y7
	 BbqMGpamVPz0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947DAC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172241015359.21541.2519908018683856043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ab065bd80fe192789a97919467fbe998eaf346785c8614dcce070c0cedbae5
Date: Wed, 31 Jul 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722410153
