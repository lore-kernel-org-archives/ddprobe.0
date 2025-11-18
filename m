Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A6E1F0994
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763469114; cv=none; b=e/tkIcqQe3TtnatK9jE/AD62oxjefCpBdro0ylG0XpaGdmaxF4d8zTB2mfMA/vcdJm+YAetFRwpRcMjYbeop128pHFWv50+v7PmdPH0wi9tHbO39XYYuofFI0aBiB6z1/ddw2sV3FRm7mvKNyhQm5XI66p4CZdxYlN9tyyiDOXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763469114; c=relaxed/simple;
	bh=lgNnYR2YvH0geYCMP9Xdq+iuGFhyjLzXRx9rsaeFrPQ=;
	h=To:Subject:From:Message-Id:Date; b=dymR/Fz5j7lAqxmJDgeU0FAZTCbl/0h9pk1iCdePUl5fp8xqPfITQvTf9OHm7p0olL9jOuLG7j4KhNAga6h8qD1HdEPt0lu6UawAH9LfHDmZUus+OVF0whnthqT9lw4KXgo+3hINIFnhRAC4jX3f0YQxPRl9ou2kxdQ0eX09xW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrGdQNXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrGdQNXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C543BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763469113;
	bh=lgNnYR2YvH0geYCMP9Xdq+iuGFhyjLzXRx9rsaeFrPQ=;
	h=To:Subject:From:Date:From;
	b=lrGdQNXVSsDMGaJK7HAAjbElnoLjS4XARPTtx6ztf93d3rTIQLjtkZLEU9ggYc7iH
	 EnfnaajdNIuWJiVXG+sKyyTz7kgIDASMmrZg3JuPnWXMIFgLEmqZuEmMMujGcs4zRq
	 y3ua6CbwWp0N2OKpFT8wiPWUnTSzafjUlkhK8Hcu5i42nyjjexJCeJqIB65D/WMVzO
	 bg7Cw8jC38+AvxRxFl9MIz5n52uA8N7i54rDCbvdN6KblvgYPNsu4UcCKYBWT8ZzXU
	 kzQxPJQTXtkl6HCOXl3zkmgmt/dUOQ+XiJX06+i1qr1ceOemw2c/qx/vCz7TlwsAKh
	 Jw9yfPS2EcKOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C74CED624
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346911358.5305.780527971936347831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84d186a2c14838eb00196b11e63f13ef8025ae522293d03ab258a8d38405af7
Date: Tue, 18 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763469113
