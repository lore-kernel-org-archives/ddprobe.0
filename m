Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1084EA2
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65557C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664356853;
	bh=c+AZNyp4dgFfwRQECHA1S7GaSmd/0LNltLzmdIUexzk=;
	h=To:Subject:From:Date:From;
	b=pZHOCZjmFzOC+qq34FcK1FTVvSDneMC/a9KdtwCSbp0s7N6oaMTM3kz8BFJzTa40L
	 FxpU/CdVF9z/LhjiR0q8PNkcIVrYUMjyEBTW+Jch0fnVlZzOoVdSf1iRQa2vbNK7is
	 +3jv5Msbwh3T+xIJfYmNVNFlwsEUKpET1R2dEXTcEiD6DiGPZrr3ckJ2Ac0Z940Yy8
	 koxMRthT/snV9PX6eXp+V30pM3msFKQU0Wf9dXNaV1rgZMOjnqmDeJn199tBK08x8E
	 KrpFHhHWS7QTlrJ+iwg8IQH7L4xbzOgMCSuf+D2yIdILLLg16nj08oesCgYSdtOcD6
	 p3ve1gxQcGvUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F200C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435685331.2506.7945650142751400789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a165d5ca79ea3e8c7d5851beaff3bdd85e67111dad0930b0771c2c951789a937
Date: Wed, 28 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664356853
