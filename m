Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81931365
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B9E2C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673176287;
	bh=7QQkeBy0Yl3WzyLt5gdEiFGEA6PcV/KQnq8e0U1+i+w=;
	h=To:Subject:From:Date:From;
	b=SQ9C+uPC2akPbZvVwYLhZeyS6T/rj4cMBscjB/87HVI3M+n0ajBjxgxF0TR3+UJQk
	 8vkr+mn2yETL3drlVs3uDZ+pge/3hGCFRMNzvZHbko/gm9hx+blNqlYgBj5vfEXyN7
	 vylRBXCVWMhESsVfXwu6W0FeL+AUZiSdnm+9AhQ0IYddi7uFB2QagQoKFRYUiOy8rQ
	 ypKMoiD97tvqI1fCdkLKeDoThMSA2NcU3CmwW0IlbkyMb5ykKiSU2cEhxJXQgYLpkA
	 bhHhdngUoWlLBUtHGV8h4q3P9lzaHxUh8ddfL5s0pwGFAZuYWDrscQePeLkapAHETW
	 N6iR0qUX1fXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7A0C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317628740.25489.6565824843492076683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd504467543982cdfddee38809c07d805782682bcd26e713ce60f07ed589dca
Date: Sun, 08 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673176287
