Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15537E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7FEC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662514853;
	bh=5h3UWv8QRBZB/Q7qxIbDPZyMG2Dl+rd7yrSwyGVXe+I=;
	h=To:Subject:From:Date:From;
	b=SEvQI+4VMrWQH/OD/RLXUTv9SHp+d5Vj5n+lCn5tk83d9Jb5sThftT+39QT6hOPdO
	 Al69gsMY5mcfu4xVk3agj638KaUtFJonQnNAMvbxD0jXZI/+yBdM39m3oO+K4KXIns
	 pQmZHO+Ld8xMnu/uShpK4YL/dPas6BR72lV1yLhEdXQbjfDhN9MBbNL00ploOsCDsE
	 6dHk3DH034iOrtjEdb6Sbq4ZxQ4CQpvzZzurKoDutLaqF9u9t+eTflcngX/uTnreBN
	 hZRkVyOsN198NsotLJuRqhm3moAGF9kO7TBG976M7KCqzm/HTJNWfXmKs6Xfs68SRX
	 +ub5tDxjBIQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510ACECAAD5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251485332.13737.13247037662124688059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bada7b06ec450ee3e8893332373079ee13294ee575debc9ed80d5323becabcb7
Date: Wed, 07 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662514853
