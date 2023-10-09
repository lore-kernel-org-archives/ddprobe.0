Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9FF38BBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKR3JqlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64B6C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696876028;
	bh=4x3yd/iPnIBhAs2FUpFkB7WBC7L2LVYK3NctiryF5pk=;
	h=To:Subject:From:Date:From;
	b=eKR3JqlW2Ir4CHTqg0kQq3RAFsRqfU5/8i0gz4O5hWO+n5Ig7j/1iExzo/ZGqDNbC
	 Hh50z/eRu1X3uzYlYayXDGc6G8NWxRRSdI6bs9RKPv25ShnrkBwQJ+VjPeW6Fd4tq/
	 G0ol7iWYHw4hxS/PvDj9t6V/E07hIRNcnMtxWmp5U+6jivMl7SyF0crH8I7urV9V/+
	 S12DdG9xfGw6xtC6/3L998qHytYq3TOw06rpCtkAYMLYtIP0m/4z1IgHjQ7BzO5lLm
	 oz4KpnSnEPsyoPV++5xX6apYuxyB2vrCnD+rZDIcn+p5b8U+blIsSup4j8VOG7E1Ly
	 mkEgWIOtKkvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9772CD611D
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169687602874.9101.5265295786921950522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f6602d5040a20dc1ce98be266d180f5349ea96428da589076be44c9f5a7ef1
Date: Mon, 09 Oct 2023 18:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696876028
