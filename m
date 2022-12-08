Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93FF2102
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F008C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670503254;
	bh=40zQp+nKznmv8rnbPkcVCM1emNgivMAdxPG/jNsyk6c=;
	h=To:Subject:From:Date:From;
	b=ZGCPIvwQlqwklJ46TWlEcnNGWnSFHC7EusAkFQeTQ9pcEf6cQRWgpXdoi0Z1sqeWK
	 SukZ1QMqu00+RFr7tARkThtd7OWQlBTsemgjTO2i8K1B9CynNLUsFtEzZM2jRdzzR0
	 iz1LZFz51DJYmr36mEyTNIfaLofBvZIeFqdHV85paDIpQEFQmx1c3jSm8Kj32ymnI9
	 LDNxuGAvWW7IgB2HlOAA1bbWuY+4tWtxGLi4rjwb/PYgJqFmwv6yMtkuekkkLWU5Y4
	 2k4F4kmMdKFiRK0cRrS+lemTDgK17DfgcDJA3rq0VRyKHQF5C6z+WNZ/8HCgF6ebxf
	 ROdSH5gzjUKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B7FC3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050325434.15900.8786452107254765931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001d82342fa8e0bbe3f05fcce1d38de464d571cd0dc7962d33fd708c43d8eb21
Date: Thu, 08 Dec 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670503254
