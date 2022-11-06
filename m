Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9C43209
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6A3C433D7
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667756454;
	bh=ePqwOb8GUG3YV7ZGQ/vBhH8qHXIvWxbhWkYwMJWb3xE=;
	h=To:Subject:From:Date:From;
	b=b9oEBEC0BnxndSR4DqWfV2IHV9er5L+sEtIwk7N03bXhk3vdACYevpAQrSo3F8I9I
	 r64d50+QHmyvtPW4lgW6PfjorQudcwDVydXJhhzvANjtdEIVkS/txbHburmAnI10Tj
	 L/PF2RJNsxYu/q09HdOjzJPL28G1WUKUqA0qzaJI3aBKceAPeiNYrFvf3UJ7fRRQf8
	 VERUi1/tIUalz0GZe+AwBGEkFcEu3VjpW3AV8KPKAsysy7HTllTeEdktpggDt0/4sJ
	 YrfjHVtJAiEVwqvipOfPHpl1XQoKlu4TIIyqGi25fcyNW+Ub0jdqK9cbUT2WI3nyd6
	 f78sbWM6fHvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F325C43219
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166775645431.12537.4592142747368275532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dfd9de4f0ef65d56d4c08c4f0850379eba63a7c4d65bb1a4f110efe70e9566
Date: Sun, 06 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667756454
