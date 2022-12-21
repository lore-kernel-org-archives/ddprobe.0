Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C4F1C26
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD36C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671596487;
	bh=UG4jtA7n9NK8XOJDpdQfUGYrjIyJbg73cKvoUrqEjNk=;
	h=To:Subject:From:Date:From;
	b=jRGMuGHJQomj2zZIGZaDMZJFqZqg1PtIaczPG+7xXEVYOUQWWX9KLcVSfltRJAzha
	 DiWvFOdxv0BqC0V6mcm6g2pDD3t+Pvg+dmREX9KcrAO08fwPU44VYJydo0sVsmyKQ6
	 xQcALOIo9/OOU8+tCx//XZ0CPfnEaO8QA5N8Vat8yF7WDP4ZbLUkMeuy76fnowOt/R
	 mNl2nbLxDtqnGC1yicXDlAuuDz/s+MHmk14LsR0iLO7KyhLR6d2Nljhbilk7fT57tL
	 0c+oyzT1IHKCy66X+M5HOs+yXd6Sr2THb4Y1ki0xE9K0lNHJC+YYx3qR9CfRrzDF3s
	 K65LgLZFSWh7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640DDC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159648739.12655.17375484143278768675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed2fe1a75cef2c3f893a899c8d3ab9d73c2de6cd260483babe3d2a88ab4151f
Date: Wed, 21 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671596487
