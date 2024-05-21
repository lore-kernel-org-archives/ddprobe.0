Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A401F951
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716281543; cv=none; b=m//1mo4eF+LywBnqDSH6E9NpBdqhZqEodlFbMDLSOmDbijOnMLvLuHmKDz78aP2XgHAFT+k3/kFF5a5VkxrTUvw7rsnJe/Ulyow7kqsVVqbkLfXYeW0ImWZtWcgn+OXrLdSu6n8SyNeNe4/aKXYE6/ndFg5fyV8Al6VNjj1Fkno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716281543; c=relaxed/simple;
	bh=PbLaXWdyIoUt/4M0tAMEGhgkiPKcbr9YiYAHvGxaAW4=;
	h=To:Subject:From:Message-Id:Date; b=YiAbOm4M5Talsh4Y1c9YAJ7IO6y1dpilcRZfU93x7OUBLQMYTbD3JYxxmv14ezToyjDrjGdNVcM8dbyr68nvl7iYA4DHzg+sjQi2GmiXKxOQsu2aqBSkOm1E4qq/YY8296IacVNZl015T4QBNc4C5iRgvays5pa5FXfh2y3UKfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t07ksr3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t07ksr3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2629C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716281542;
	bh=PbLaXWdyIoUt/4M0tAMEGhgkiPKcbr9YiYAHvGxaAW4=;
	h=To:Subject:From:Date:From;
	b=t07ksr3ZFOcxphA1K4qkTNwbuNLDnwVJNjJvait/GJJFTSh4v2Fn76QarHE++75b4
	 8BhhMTmQVTOGO3oK8i4Byvc6Yc+5qI1eO1BSdkL9M9DyWscwRKqnKfST1mboQSxPAr
	 f4aL/fpJnj8iTHLq2hor88yOFGTvCclH1LIc0SZKIKbiH4wxMWJI/Z6MSkaQNtIYZE
	 G1Rk9LLKwQG4UUiij/9I9LCqmM0aMh4gMvk0U6lYczIBCTQ7rcTJJa5YL5qAl3dguo
	 GI7S3Me6h5cqykYb+cGl0K0NQGxamWqL20duw43OaXs7nW0oDh17WMNkVqgUmiZgJg
	 zqZYHtYHTY+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9E8C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628154276.24199.8316149430209412480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6009b574e9c4e7898bd593cbdbdc2e2ffe980379b45161254fc5fc4f7796c251
Date: Tue, 21 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716281542
