Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9212E10E5
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 066C2C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685688426;
	bh=JWb6d4WKfj2r1GmRmeImLyDIMnp0MpDGicYq873JSVU=;
	h=To:Subject:From:Date:From;
	b=s7WgQIU3BX/7sqi9ony/eM0sfQSeglUG3CUAA9QDEsW8B5KGv5T1rga7a0x8ijdHA
	 3QcjJfzTYabar1IVnlu9m23Qw6iIbwHkLV0/ft+Oap8vQnxEz2P+Vy7rY5v8hC0kaX
	 +mQf31Y3aHDdGqBLT6874sM0AfR/44JNTuiZ7XTHfHHoF8R+6HtDO/A0QcZoCCbt2v
	 /mok/cGFjL3d+IThdXFIJTDhP+RatEnY2Xv4HA0RlB0RzOaqbp74+ViE98G7C7knV9
	 H1uhVyGktXmoM/YwhREk7JVJ+kzK/bSIzeHsGmQFqCWRrDE2JdfXjbwLL6UCVf20d6
	 W3orcB64rWaJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C28C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168568842585.11888.9073646715432928312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0404ff2422480621f6a7280352f992188f2e37d8368d6e36958d58920326ce6
Date: Fri, 02 Jun 2023 06:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685688425
