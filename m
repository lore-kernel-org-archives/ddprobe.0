Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE671E522
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrzymdFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDFDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700498296;
	bh=990yfyhmuVDRlzclsOq90lwmWOQCN29o5/zgFxscruw=;
	h=To:Subject:From:Date:From;
	b=QrzymdFEAXxryUd1Tz3aH0mGzcLBZW6hD6c4GN4A19tSGYjspvzdCBUM/lEn1RlcD
	 2up0mbTTZwjW+Vn43/yJ2sd2Vu/MQM93lv8Bqpcp9G6EmJHP4NrzJ41xPioN+9nTJ4
	 5nIg7U2bqTuAEYAMlmc4ik7gwzMhiG4PGGicAPkHilp1Dh7U2SaGKI94HQxRfYhxdp
	 iVeVGbikIFlcNxL4kCZjk5NuNbIH/VLOY+SXTm8A6F2uSIyQp9hYniKgFdnHzq0815
	 nCMA6CiDyD5OF2X6hHG+umAH01nib5BgxI7bNKRaWL0rGWdcsdnmw6niEigwTpT03a
	 0Vys8M1IW6rdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632E5C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170049829639.27816.10547472761264977278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7158328e782a6cebe493c2dc32e5f0da982341fc41de651999020e1369c8048
Date: Mon, 20 Nov 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700498296
