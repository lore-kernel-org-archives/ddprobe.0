Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8A223ED5B
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770386034; cv=none; b=ctLssvq9gYC2PctzDBiUrOUffTp/S08shB+5ESMKmLx2m5hKDJeD2TiEWz3hxgyFtkyO/TARm0cXF4W4orVunJ4hqIVwoCP+twYr2IKxBuTFOLYGzfeYVj4y1IYNA83HILLb/BDpYLYXPiqIb0BEg6eZjO4DPpjJ5ZVCk82921o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770386034; c=relaxed/simple;
	bh=GdCCsM+J3YVZBZPIFYPmz5lBYsu4aUx92H2wuTdK4Co=;
	h=To:Subject:From:Message-Id:Date; b=k0JauAm3mTXrtHR6FrYDWYCnuE7mP4WF9TH2lo9opmXA/lbh8XCf4KGI7Vow3g6ygO1uYTffuDf1tgi9/DWjXCgADInbKEvrF3iStx/MPFTTprsDuIU7fMYLXIgaq0+Py4Enhu6pIFRyNBBGSceNUc1eDOZk6L0HRfKIZAzqvCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPFwolIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPFwolIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A249BC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770386033;
	bh=GdCCsM+J3YVZBZPIFYPmz5lBYsu4aUx92H2wuTdK4Co=;
	h=To:Subject:From:Date:From;
	b=EPFwolIJuXb5CcsmNqF3qsMfLee8uWZoa74C41OIvy3TdgqpmQEyyp2ZDKR7fehKj
	 R/lP1cGziMHY1NrITAt1xcaJmSQoD2zo43jIbJ4Rspe98Xz0jKBOVUqsXQZNTyGior
	 hUzJXEBT6CNB7zFFgGrWtovL4wedQ1CP3qAHlJDjE9rYxhqxAPJo51SPhloihP3cN1
	 hQ86+gYUxBvs8GgFufmNAJI5TRCHKCh4ysqx7etEAEZACUw+c4AnxUPZQoDKDKkN1B
	 HKNRsnrcByM2NRJGqgsEbycQGOGjRFPt+5ZVWetlrL4DiOdwrFZ/lW7ttD0L7cz1yR
	 Qk0mg/bxBJ1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91643EE20A7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038603358.1856.6817561519890071561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb3411cba171cfef332187e7270dec9561a55859f40b666f487f6057be60668
Date: Fri, 06 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770386033
