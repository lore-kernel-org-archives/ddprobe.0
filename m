Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C652323C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA731C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686642365;
	bh=y6czMQBtsIyVHd+2Abq7Vx5J9XoWLV0iYtNg987j5fo=;
	h=To:Subject:From:Date:From;
	b=R3l3faGEdgLQwqIALdTChVW5/YgAnTmVjOG4glZJ4N3HUDMlTvKNh8gyTKRsQRyLL
	 bbdno397xif9ZOhbzq5K2Iq7LRR5n31xmicKydmdu6i70KBYQeMcYhSNAljjPc9GJy
	 mMPNQq9+z5TgoW4q5vqAxmt02UwA2VdDh0PdpTfbJOSYeo8etkC3QtrmTHGNFaOyzz
	 fNnWMjHF9Wk+7WLINk2GCP22KZe8Y8775jguyX+Dnp4XVKSiOewC/V01Tfm5hPOyr2
	 4gLjrXWOnqW1eFYsAQ/KpY6owISnYVoy9JFod/TMchBV1rz6izl12GiGHbeb+7OMK7
	 /rm5ZjH3/uoaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE217C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168664236576.17854.12083607846690131900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f80dabc4a036e5ddb7f033e129561d17b31a3fd7362af357d0836a8461a66e5
Date: Tue, 13 Jun 2023 07:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686642365
