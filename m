Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576CA1ED49
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 19:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E32C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686683228;
	bh=fJ0FzDve1sPHBoTBD1XsE/Q8+WLLNld0XM/tvrm5AS4=;
	h=To:Subject:From:Date:From;
	b=ssFn+brWUbLccluFBWdooXtXZSbN5UQs1hRHlsCV1HfNjNKJmlP8lrGuPvltrfaBr
	 N0GAse97JarqPy5VDw7rRhV3SZHY+QBIwCLD2xN5wYDRIWnv8W7hR7nNjmfO6WUl+o
	 8yGPMNo/qqEbSdA1uR47SBpy8jubektbgVztDLMNLN9+OoNeU8o7GYh1mbAmdZd+xm
	 HAQCaId1T4j8pVQOws+VsQLBRxFT0EZ6vKh/v9aGysgX4ivhaIeRiVGRqsN6eIQstm
	 OEUWqSYC6V8+2GfLdU6AvADV5VaXIKZK3yc/SzFeRnneAb8kqh0l5NFvfuSvd4SrSm
	 QkxvFdZqQK6Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A30EB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 19:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168668322872.15755.8274075489611968797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fe6e54617b7e8421b688683856cf28917aea9d177eec35edc41330f2df2735
Date: Tue, 13 Jun 2023 19:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686683228
