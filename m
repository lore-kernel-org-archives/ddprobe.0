Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D457FB43E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8591CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674157287;
	bh=d2K/Ql/KyFYBpzDwf4RFsY1H6tFIs1W1amAWX6JcHxU=;
	h=To:Subject:From:Date:From;
	b=iaJBpQCi9BQp1k553Hgz+0moHmqi8KapjXIJgeF/x8zwLEtVDjEo8Jbcg6QZwXD9O
	 QdqAemjrd9DIfBXyhMK2PEApqIoguki6CH0wrL656e0y3IkaZ+gSiNd91ZRX+ZfDgu
	 G4Sxw+0utiodvuy4RaYIrR53k4S+886uqH/Dtl8eqiUW3FYbmgm60alR7hMZmyk2Ni
	 QulxRcR+gUc7R5DluNiT9BQvXpJPh5L91kkrfJzRjlcMldqcybpQ3OXFMS7CAawx1q
	 hG1A/9AO+rNeMyPSbBxsbcnNPTZphENOCcvqppCbJygueGAMG26rYkYYZGITh9Ksdj
	 Z78iK6kdEx68Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AC8C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167415728738.4431.14040190693614985208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0d084c5971f552bcc4ca2f4cc71c31fc11c32e01d368d47be3ea999099c5b2
Date: Thu, 19 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674157287
