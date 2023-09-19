Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A32246A1
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 06:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF16C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 06:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695103508;
	bh=HH1H2+3yBqenykofLyL6Jbv05eAP8IjQKWQftMeuqkE=;
	h=To:Subject:From:Date:From;
	b=VkYdcEkdP+j+mSePcNTsZGhmkW5R+qe6qjqstQhoiq6KWXM/UZC/cE9bH5eQJVxLw
	 PSe5lM9XErRLW95ySwy9SgsdnxTEJkSUb7DxopiGdp3Jeqte4Na5BfFtT0WN7/3HAQ
	 5PqeCZfcM4JMqK3d5yUua9RFkaAEnNsTUoVZU4jKihghG6+vWYgPh+QjLi8QJPU2JN
	 H6RNGUIsNV1QKwIwUxZfimDBrhg8tp44CW1lWTOGg1MOEG+eEp5jAEQdzX6J8qYJN/
	 Xl0a6vJai+TSgL81R/7tcqXDiiABUDPEd4QdrsW3qStfr/WHtbvat9lCEC9WC9J6f5
	 s03Dl07Bgsurw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB17CD3437
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 06:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169510350871.14577.17010814987731589284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171ecacfd367cace600ab6459e41711bad938f6ad7065db6df5975d81cf9ffe7
Date: Tue, 19 Sep 2023 06:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695103508
