Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95BA134AA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A44C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686829148;
	bh=jXYQjS51fD+lxi5v//BMwqlsFkgFKOeMCcvq/BLXwwc=;
	h=To:Subject:From:Date:From;
	b=f2W4693Q7yGE+RQBNuXVrsqh7c4Afq+vm+nEFjbFzvQc0RA6FO7I6YkePpff+4hNo
	 X80L+03KWci70Gv8A2HkB3P44cJsMCeq/NCadx5wyLbYq9A1/lGpSgWsQ5w0gDTfg/
	 bJI28xdA2tTpsgF3X+s7W6pv0j/oOvpjHqEAOjVYdntYKfQQTKRcYRw8u+FKAILazG
	 vxNU/2H6siF+acdFP1DM07i6d6PAP2btdDRHC3I+RoM6+AQGp7CuJqigtQG914ZqgC
	 23dmUtCNx5fNwSKZA+HCAb9OZjo9Nyi9RcBGLKkWW3aVoDGWbJHmW1EtxuEj7H+5av
	 +bg4vtjnbe7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB12EEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168682914869.1097.12831623359937977965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4d129cb8c4a4c6dc34ff7eb5fb5daca6705c50d8f561f499c5a6c5ee5be4cf
Date: Thu, 15 Jun 2023 11:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686829148
