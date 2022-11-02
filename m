Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DC27E
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B68BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667357454;
	bh=3g6d387ruY4vpKH/zEIdA6S76N2qFlYi2wFRyEJhFII=;
	h=To:Subject:From:Date:From;
	b=C8Ai7G3Hb4kXgD5vSqBjbDpD2SuxcyuO/i0yjgHt7dkn13E4G7wu8sd+/Xxan3Rxw
	 hKQqwdF5dcNVRcA/p9W0krfT2y72shPhIxw8pMqPt8HP0zSsgvp3SCxEDBf4GScAkr
	 yrJ1m9ZYKFh4k4qIymmo2RuyA7uwug7NiIv07MheSOq2ih8cxmH6A8ZU85K9b7KcGC
	 1OyGEyAat9snmnN2hWleIBJ8ZZr9K5Za7Re4HAHuZhYZl0FsBKMt31a9zsRvQ13atX
	 +YU5sy1mSmyuxNrDl4s+9zyiwUHnA/CSlPySgblDO8+fJC4SH1MejOeUZirHxKF3jR
	 9URCNbLMNI4bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5273BC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166735745432.21705.9769878145691679570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80db3336cb4e85b228397c8a88bd62862296dc6c880ff0c4531623077b1d49c
Date: Wed, 02 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667357454
