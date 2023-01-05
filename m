Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850C2F3D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91CEC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672917087;
	bh=vEzg12Pjg193FgO0+8S4iY5CLGBbp1vrKdcSmWa0/WY=;
	h=To:Subject:From:Date:From;
	b=J2u6xjr6CVz7dQ2MrOmcD+rUfUrczOd2kjGlrm+8oziqqPNQVxEG6OePPtxA/0ZTW
	 qZ/cwPCHWN7DfYNig8/o5fj/FzlN8IEvlOXcOT8X6csR4bD+4eJ+D2rSWAqNptxcq5
	 0WzgIUYB+95xhHkggzabVnpvFqJ1MqaqYdd2MIWVoParqmQNyLJVtsI0FyvfKERe9w
	 2WSim9KtGkKFgEhEaG4MwVz4ttFkiHPmQupXRi9Fw7cqT4g8hIpmtObpCBPs2tJiUV
	 jvmoYJN3VKodMF2ZY+6qU7fP3tGUlOFQjRhMrA6hrMxWMH3iV7LQwG7J0QOLjFy8F/
	 VLmNTGym1WXxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 857D7C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291708753.3756.16496006285630390982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6861139ed70d2707f3a34c7d31e9d33b4a4b4e2ce133addbea183fefd155822
Date: Thu, 05 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672917087
