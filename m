Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD030D531
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF68C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667837454;
	bh=EIx9RJg7QWe5s/umSUj9RCQCqTqpDRGbzbHz6AazH6k=;
	h=To:Subject:From:Date:From;
	b=f9DvDb0WIif41x0f/VvC1gqjOQO/hDWm8KzkhRrvL9Qte/ZfjsWUpTsOjsXrDsZS9
	 TqhFYlYnIYf1Wy7W/JfPXSnovV6DLWqLuqGGJMXoPUcxbbRcJeN1hP8I5r75H7xS3l
	 7B8QQW3SWY6Sya8mapLW3Rp2uglC6IOFNHLnV0alj++4aUvEY3YIqB+kpPwQfFruWA
	 VdnN8zH6Bhm4HYersNPFxPvVxaphTrFVtSbnpNrEKSuJrP4K4xyZ6kYq8cKiCuKtRi
	 8zUtPWH85S+fSC8V1t/gRY9FiU6j97v0VQNpKjZorDwkWtnXNJGIHUdXZf8EYe3wwI
	 ll42diaQtPxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5342BC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783745433.5863.14234139984183939856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6ecabd0341a7e1e745dd0c9ce9ca7cd831bf23ea28ccc4518cdeff612a9901
Date: Mon, 07 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667837454
