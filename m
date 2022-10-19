Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB37B53A3
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68970C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666208453;
	bh=R9pV2zJngy6yDu26PcvwCKUPjIdzKKGiNi3tasiEHTk=;
	h=To:Subject:From:Date:From;
	b=lol1BLMlKIAHpgwdBTeT2zzMsuR0qGaO9pej4X12XRjtSW3aqmShjQAmz0GlZaxIP
	 8LXsln/Ok8itChmo0kwMTC0DVGs0tqmobc33BR+WB8k1XRsdm0B7WnaPNPYrvbZG3X
	 LBabusfm3tXqzJM/DD4/RIoBs2E1Dox+OiEMDjbvNxLi6BCQsjDrOY9HoJ+YFrR7KW
	 ktR8H7Ny1sII/upsNtJ2o62jO+JeBEqzzY4xsHwwWjYiBJEHUPt/rvtTo6m8RZPM8X
	 oohUkLS2tF0pzYPus6h8lXcWybsMBSeqDWWHBXOjIvEuAQLQFaZ3eZyOFGoPbwOUB+
	 4mMZxirwOeE1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507CBC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620845331.26222.5956770230463930618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac842147ed8f9ef8b45412ce8fbb49438bb1ae1908be3ab4a00a74b60f761135
Date: Wed, 19 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666208453
