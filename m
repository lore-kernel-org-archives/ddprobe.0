Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C3B320D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF76C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663067453;
	bh=WzErcs1Ekf7jrj7njKkE5LHuZ++Ue8uBVlU6oav0P0M=;
	h=To:Subject:From:Date:From;
	b=uIRWC+Jaofo4l5eFVcuq83TEMbo8OQRkY0fVgq3s8inJ0JlC/sXm6X6a8eCZSryPl
	 6mVIxPBN9Qct4PQMb6WwvivSb192pjjelBEqpb20H4ONpEPdC7JfiGo4pKwsmg7xgq
	 LKHU9PY48o+7yVTcyUMUNu8MIc4cZ06O+fjWRKx96oynX2H1XOmdwNi77910plsxc1
	 pepHV+Njhov43jynDkZbNmT0NMBc190qZDQChzJy9YSNGUnH5eu33VMR2KmwVa/pP7
	 +rQAdtl8VJvfGNYQm2tEDKzj+34+2jYeazISPN+lwjlmvf5mhMGFIv1812hSZYt1Rw
	 arVEjBw4EeF3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5509BC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306745334.13907.13596036244310549265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4d6e9e40486830feccea38bfae0cc6edc0538b5ebf6132bd2a632e8bf62baa
Date: Tue, 13 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663067453
