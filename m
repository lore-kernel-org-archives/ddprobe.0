Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE367E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8710CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673685687;
	bh=5gJkeb2kwacZtipT9KqZSffL2usumLnYHeWq8NoozJA=;
	h=To:Subject:From:Date:From;
	b=OTNBQxjQWHTIyXd7fXmPYs0oulFdY9k342QEdc0BscVnZCoLhSvX9HpxwCBL5vHd4
	 60XR7yJC9qQ+J4fmgMrsENyHQ7k6/d8YyWDN8a1SaajV9CGSl4pM2P0qAU7/zCo17p
	 nZeVxAPErEDYHppJ7hBXTw0yU2Gnmh4lwyHZPKuCrofu0RavwcfZZ7aIlOo5sSMqNx
	 bcN3RfL8b8g9A1as4Pgjw9c9Ogq93qbfgibzD7mtsyXCSZi3IzzvBjub9B/x9QwSrp
	 Hgj9DkG9nGDTIx8PtT5q9BGjvw97YUGRJiuj5V1DqxZswrOe6KjGEhVigtZ+rb8c7F
	 JHSvAfgeegcgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECA9C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368568741.12692.4257799012779237761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb05da04ace09918bbb0763834623137dc222a7e61127437bbf85106b60c2942
Date: Sat, 14 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673685687
