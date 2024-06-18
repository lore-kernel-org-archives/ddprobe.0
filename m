Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673C313A868
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718749763; cv=none; b=i0UkFup28vP0B2z9+Xp+EZQoBBKBiw92v3DujnoV8vUIE4zkNY9NDWW0l7gz79WMxwWLQIID79211FW6tZvTKIvboYllq9wVkSNYjxiTzGye7IqVz9Vy/wQuMIspvCpZyyCkZw4HlgdAvI9JSS6S/FXG2BsFnIk0KzHSN/CWyUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718749763; c=relaxed/simple;
	bh=1Sl9VxZ4KMyQsZVe28qdKmud6iJT7c0XYP5plfEibjY=;
	h=To:Subject:From:Message-Id:Date; b=uKcJng452cF9cXQ7sPmWIelRd9jkSIZtCsXxusz+EWO9sAEr486axIgfmUSEFbMVqu4S8FaLOoX8IVuQHxEcLhGZbqx/bbUCsb5WuSCTZ7J8ALUVOlXltJqj4mmg5bs2Gfu3+hkWOvlqfegW0LHKl9LoQ1bcRwaY6spcPWYbSKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiInhsGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiInhsGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0B3C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718749762;
	bh=1Sl9VxZ4KMyQsZVe28qdKmud6iJT7c0XYP5plfEibjY=;
	h=To:Subject:From:Date:From;
	b=TiInhsGUofeR3I+mU3DE75v7zQsZ2Tflwu7nvSSJcUqt2Nw6gp4kZ61QKXom4zKRU
	 Btg922jCC6+UadfvFPDHughFDv8z8dPJ4sgRltQLraKy+/78/xMXOKQE5TFrsu80qe
	 aKEMvBd5nDVTltENkkniIMjxCXYpov/oclnTf5YwfOoXeG1QefKypiv/Jxu/yYh0eD
	 eR8eLUw0wlad/pveIlbUnBiGXJmH7me3xRvfweHn0vInk1CqQx/nkdPpvp+QjrznbI
	 sKJHX+EviRmLeixU5+kSvd11lAhCXH/Uu3uo8hIHJdiqO8DFC7T/gXV2ntEijDO3zz
	 T/XE0x+EiK3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD81C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874976282.14858.17676915172257982782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ee158486fc05354849027bd9197f681a995573ac99432283d6a75e047cc021
Date: Tue, 18 Jun 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718749762
