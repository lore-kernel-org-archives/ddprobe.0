Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDD214A4CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776318454; cv=none; b=S9fxAYVqRVVOejskasQK36YoF3O2KwNe0r6/Iwzw6rMO+Q6RlsB7L2Xn327PMzGeTkP2Lf7jIja1l1lU2XZgs4w1VizCksc7QnuAmj9YYSDlT0ZOtLN5U3+q74h7RDHNC5E7qLEpbPQR0Gw8i9vWAvIDd5VEheNOMBoQRcaRAU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776318454; c=relaxed/simple;
	bh=6TPUkju5J+XcZ57BZ7WU2EQ3DlvSUBRJ4eL9pv2LKv0=;
	h=To:Subject:From:Message-Id:Date; b=QH1e19CZHWRvXgu8eXKJ0mCS+NQdnxBWB5DD2e0do43iuvNr6CEreijgw114zCx7VKvVsb2NPbAcW0WtaOBeDhMPnnuuZ7VwZDGQamZ01Z81b/kcIH7CEkYPzd1mX+PFZtwfeJmcofB2OEukGy6fL3+E8OSpb5BdCjDG4YH4UzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI3+exDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gI3+exDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4BAC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776318453;
	bh=6TPUkju5J+XcZ57BZ7WU2EQ3DlvSUBRJ4eL9pv2LKv0=;
	h=To:Subject:From:Date:From;
	b=gI3+exDtHBm9TZioXEt20eU5TFloNHFjN7dLmQ9ddhxMOv/+44WqSAZXJlutS8tLN
	 H+W3DkpZkzTyDQFbkLfQnRjNus+TRXcM6hOS5aP6iOx/Ftnnp51cxzsctJdWFVxQKs
	 vZSf0RbYvjJZbl2tr1JknRMcsKi2BUtPJrecjgFIvPRl4KCMRJpRIOgypeHb/lv8nn
	 9zUTWZIb60Py9T0jprNHgy/K/QWNjh7JB00FcNEMItOsi5CIriZzqFz1WSOKJg/fYS
	 xBA/z+0ELYyPhv3yyRUXjyy7A6qLeApsALDnyb1kxeNxrrvZiyy/Zq9Fief3eRBLx7
	 Lx2FfobtCgsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB5AF433E5
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631845370.26421.15074378333399648716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd6e13967622fb7bc132bbcdc0a18ce37e4ecc5ab27be83d9875e520d4a1704
Date: Thu, 16 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776318453
