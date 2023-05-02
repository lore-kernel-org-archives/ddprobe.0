Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E8A9470
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CF2C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683060425;
	bh=3GFHkFKhnVMLMZDnCnqcTDK2b+x++hhGXIvzRAny21w=;
	h=To:Subject:From:Date:From;
	b=UH13m9YCYai/c/VxkIOWMBTQmaa5kCyP9EGuzTPLcCen/Pa7Mzye46NuCAf0+dBsY
	 4qyA7at7CUOIh58mYmZfEA2N6/OqmIZNBx6a4cKILlgVF67Fsen+eHMmifKmFJavt6
	 hcp7C3qamfc9k5D99VQTPIouvoroSIhucFAmhNGfj+T2xnUlNiWIByyY5LkptXP8qT
	 0iTRMLzFWyU7BBShp8P5UV4q8NcP82vCyKLXKD1oy5xS296umcGZp1hje6go/p94Qf
	 Fnt0W79sbhY+zSZL/WfFEBPj/WNjCBz8W66UFKu/SiboWXefpBrcQbTFshZEmLdI0P
	 zlxPrBsToPATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F3BC77B78
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168306042574.3682.2366602207233150666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c48567dd48bf9d43c9fa4a4ce1ddc7cc99dce0b34a368ae0b0f5f2491133265
Date: Tue, 02 May 2023 20:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683060425
