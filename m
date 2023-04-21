Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F50379
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 03:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F200FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 03:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682049426;
	bh=gFP6g8l3qzT4sl+otzrzu5fxvT2O+Jftncqrxd2J0N4=;
	h=To:Subject:From:Date:From;
	b=J2q1EnSJ2XpD8tgd6VxjEFZd1Fe8ujmfOjb18S37fWZhOu+/XKax5qW/+roEuwfmU
	 kh+QCn3nFum86mm7wQra+44mSujCgulY70QZLth2h9IK51Z9DCJ3++p6QWTo70W7vt
	 EHgRna6ZBu3UnhvyKP9GjaPu5FVCVSJJ8jCyyAdP0Pz7VwVRnTIqAXzk+zp/77kJfV
	 OrnmU24+sADN35czp0YHzq82HroP0dPUqRa4n1CpCQPR30ce8SNwF75WGf2CvrbV+1
	 WG7BbiZrIbJzCM1oJCyVSP1+uOGa9i4Sy/YmDII65I+/tqBXtLDy8RQwuaqqwnWefr
	 wCiukLigmUVQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA219C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 03:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168204942588.13133.15161548711463214101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18773d53fec3542b64c8f69468c5def5f856806559ea5991805dd6d86ff2bf8
Date: Fri, 21 Apr 2023 03:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682049425
