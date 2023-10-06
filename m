Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E0A1CA9A
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfVxu1QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35F8C433CB
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696604228;
	bh=PdvcPx8uBd+KsAbu6P0GyJBcpJI9pC1xdNHnaDCzXH8=;
	h=To:Subject:From:Date:From;
	b=YfVxu1QRe1oJ3i8s47fBRzFRsOkwHmwZwJ/2aXYDdQT1d5lUX0SToH75swtRjRqL2
	 YV5H5zBVRvD2c10oSjcUGDyi3Kle1pLGfcJv4iRp36VPK/lbD/BVoqunWVIyNRcLih
	 TBP1jpsiGITQ7uHankcnr9qp053KRrZSOn70i2H8kVuWDr0tbV7n4bLOfL2Mr4uegw
	 rtbDoX0rv8vtnxwYvulikXzU9UtRy1zcgI3DbYQS9lifiy8JoOG7JP0AwQSvSDPEBg
	 RjG2RDnf9GEHHBLaFSr5iq9H5tS7wLW1rpp0nP08T50MSdV7mzR4OKUzaSmixJJmlM
	 e/+d2hKGN4WRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B537AE81E05
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169660422873.19473.2925836090948128365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73320ec3d394b806fb93224a80ffa66174c4cf318c24e173a628ed8f3f272bcf
Date: Fri, 06 Oct 2023 14:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696604228
