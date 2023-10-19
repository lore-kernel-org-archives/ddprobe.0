Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BE517C2
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bD/xTldI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8FC0C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697694492;
	bh=Z7/akyqN81VP4GzohrY2ECqQGzjNGr85LdefQBBEIJM=;
	h=To:Subject:From:Date:From;
	b=bD/xTldIWYzIScK/RM4RqI9TFxSJg0PGY6w+MzGjbG0atAdO70PTP1QCy2hONJANO
	 CUyUXTA2cDDmsztSGV2kC4cCrDGppINEhITInyj0/KWSe69ZUT4O6vHnJxbrjeOxiA
	 QX9lCatEG8B9v8qisS/gAoFIhjzK6IsGEEPkt/ZAheV0mZ0x12fZ7DGwX6NThAGsJD
	 xH/8i7RqP69RR+ST9I8khYOP78p+vyFV1PLJfddLLb2YkVOD5Jp7TpBZDZ0rynaawB
	 mRVW8BPC5hQKEdQWj/UG9Yw3tz9c49xF6aZG82qWVNfkewpwn7hea35bFfs3CZEd0/
	 Jt3HPZdx3+moA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9788CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169769449281.5242.12955555680547838023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e9bf4cfe8d948512f917bcc405527b790e47138c1d05e4f468037c254c5d3a
Date: Thu, 19 Oct 2023 05:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697694492
