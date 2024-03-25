Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D826686AD8
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711374496; cv=none; b=A/29NHXhZeTXqBhUxAyw1cn1OZUzk2IYni/JiJYZxlBI1Me85MDhQPTSU4HlZMNCMLH0rNdVR18QbzPdZDmqKykfDYBznAn7SDabnUr80ewZM8NsO1qHcz2MnmCrz8xKzmj5C9U1InnbkjviUA4yrTf8qbAkMtpA3JOqXrbbwss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711374496; c=relaxed/simple;
	bh=G9apwPspBp6Zy4XEshi4WZ2arG+DGXDRxv8qExmhxLI=;
	h=To:Subject:From:Message-Id:Date; b=tLvEVqFM+1+KPDe5dL6BTkDJgYmIGjaBRdmbI4lFXx+2q+Wx5jSQuXi9lA5mDqpkT6JkNMY2A5XT3h6YUViVhIyaDbqtk5Jx/gDtEcaplJtyDW/5683AOG8C3KgYQAbzg0A30wAsIQJi/Lk/FLILO8ZY60kHgTRESkl7AK28gcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoRzyz/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoRzyz/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820D4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711374496;
	bh=G9apwPspBp6Zy4XEshi4WZ2arG+DGXDRxv8qExmhxLI=;
	h=To:Subject:From:Date:From;
	b=UoRzyz/vO+MzoF/BC+AhyHAbtDlaTqve7pNGPLEOxCw0HbhVj0dD/Tc1nnTlPzsXm
	 fHKxDkbOzM6MFPG+clvM81om+lQ2q/u0jz3jfd0b++NRp/npoj4wPbpo/yqUgSiFh8
	 7Qlb67KNN2Y+dGxSFgaH2V0PLd6+pVAMSA4Grb4OBmIgVTzKbCWIw2VwHoPPoIf/G9
	 QPRWRIrzqVTEmM+lTkpjYNAUDFpS0vRajjRDaGc17mTgyVuQjctp1ZTv6gToxLOn8l
	 pPLt2J6RuUAQfy76xXhnfhxmxzmnG8QEtEJs40oGlDG8k5H/ihEqpQMPeziUYM05d+
	 ZNB9/tF1I8NwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E305C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171137449643.25451.8995286922502219573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e2ff874f9d04cc2d1bab4ea94f362525d8902a0c8151dd846f1a4dc1295a82
Date: Mon, 25 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711374496
