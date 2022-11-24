Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75F728EF
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9D2C433D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669299654;
	bh=p7fhHi6fnEyJydMFMmSUOzLqIcC9zAWQJbPiRYBnvjk=;
	h=To:Subject:From:Date:From;
	b=ZRdCXza+kasFg0JPEz7vuhTtstx2be5IljxyzYzDd4Q6h7jmGA0InznUoInNCmfQJ
	 4ve6kYZU4WqoO6xIFFb8MFAkmRkLAxW5y8saY0jkrSlRI0duW8QSJJfbyFPfiBGvhI
	 jb/3AXj4h5s3HiU7o9p2FOYx+avMkQ4ShlK8dQhstfuYwHCrQj9VZX+QFOFpM2/brt
	 X1nVGMhN7Gi34MRm/oL38euCrCTHB0IDn1xwH8zPx5iTt/kIJrNClv77aj5Hfd4qfb
	 QFwh3MZvVjYD+hRKqEDI8WEt1qe89pqs0VLAa/q0+Aqzxr2pijUppjq+/znaeZ8rlr
	 6A9bno8wFugVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52492C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166929965432.12694.15196538034568060718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b89e4dab1e4d85b462c1fe67c1aaa7c0cdc02e49c2ccd3972be358febbff98
Date: Thu, 24 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669299654
