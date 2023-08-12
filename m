Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AB220EE
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 17:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6CAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691859788;
	bh=HqbWfJZC+FDagcl4pzOs5/4dBOYvxISCONSTDGA9NpM=;
	h=To:Subject:From:Date:From;
	b=YrwIhKOc5UYvJ4g4VngpRTiH0G/uZboJRo3+ugv80yZeV8Q4mspKdoWy2r5UAQPuz
	 OqTEDoepG0Jc9F7IP63g5Sk5Jh00aH0CC1QqDU9E1KENUlgnEZ43tDnHN+4k+DvyAr
	 1mkoITJn6795+eNchdYaemQR+NSBRHzLWtKC+xVyFdSSe/rUHCR5YgXmXB/T1Fn98j
	 NoAzBBIojnMKBePObsVXL68+Mb1nj0LUc5/ZuF62GRr9lkcDV2BxXj4fzNyVqO9DAT
	 rL9CVZqugYDsWxvuC3/O7kp3UvSUxq7ODj3ha62noNRbU4G1qFzVIcDCxD8PjcScBX
	 fZLl+dlGmFz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B409FC0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169185978872.23776.13751333874398949101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7382d84a2c953df4d3895a3d93e5734e2367117b47e1ae1e2edebd206e13c107
Date: Sat, 12 Aug 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691859788
