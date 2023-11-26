Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B927E
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLo2nFfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849F0C433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700965096;
	bh=npdEwaKVyIKT+FVgNpfgBVs9DkUBBTvzpDS6r1YpCN8=;
	h=To:Subject:From:Date:From;
	b=CLo2nFfS2sidsyx04z63h+DQo5EUI3hk15SqBJIfAXtxCCrshIqh7RwUA4hkpMKDZ
	 nlHcxGct3c3+C7/zKkWOT3j6HG2f/T/U3Yc4yjfCR5YQLh746KJbjf+2vzp07RC7h8
	 x8ulv3OY6QUg5qt/zoreSyf3jfN09XWzUMA98bl20g2iRAd9mmJQqbVcwTnHvhNoec
	 /RQooYAxq7zHqaVKC+NHCZ0MMo77ZqefzlbPZvwGhVj8f3gHx5zRge98vhSMTJ+3JY
	 fdaTr6PlQOnnTwm8mwvRWZNqbVZnRjdx1/AZRatpWeNntoEBX7asGR6X1FShmdFeAt
	 iwN+uQuIRv2Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675FFC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170096509638.12636.5982398959202598375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f926f16cda0a002edebcfb46097145fb851cc51ae1ba31a1f0920991759ae01
Date: Sun, 26 Nov 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700965096
