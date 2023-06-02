Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABCA15B2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78D8C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685677565;
	bh=ldyyDTEWTQlRLJZGR2V66lT4o0lnbt9yzT4dPk5gO/Y=;
	h=To:Subject:From:Date:From;
	b=H5v+TOLBJh1Rii3zmQcWJpijxI2w10XeEf8PDqayy+cvTqhVjneuQIJXOxp5lLmMp
	 Hb8YpVlZ6BPsUcPzWp3MjSvOUCuKOvwAc+K5vgFhyCZDCHr0h+IIz228n/XhE2es16
	 xImHbDSlXaPHq/K0NmzQB4VVP5n+WRLLP7Q5VyvGOIfUyiwOLFngaQLGGIqG+g9a02
	 pcAhh/N6enZycJIX7QTfz3T8MGV81ATrXmV+SYzxEHImNMgyw8msZmIPClQ6lrw0Y9
	 EJ2VCKI3NzNaWGupSQ6PjUq8zc5Idtm4fK2HQ/NNM6cbbHndzzTDgEZvbrQfVGvp81
	 JqohqQ0KIh17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EB7C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168567756579.31788.2664516954176361641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d7c8d9ea7d8ef1e9f3d08ee9acb4fafa94baf8183c4d7756098e3b4d823607
Date: Fri, 02 Jun 2023 03:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685677565
