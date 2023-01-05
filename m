Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BEE80F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ECEAC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672902687;
	bh=s1ybZpJwhr7xLpyy45C8cpMbBjtsxZGiBaUY2mm/Ix4=;
	h=To:Subject:From:Date:From;
	b=Ye+qWBEiYgmcL4+zbcPgphEqqSPGXmMePIGaIKxH9UHul0RBNyJtWIXZSys68/LV2
	 euU+WEHpPw3E6pm/fw9YQtClQEtIJCaB7FZNH4yB4870YkHw41vXonVGEaK6CcIPcO
	 YIVqGjfX6ocwtj2v8gcLlK8N+RawsaJlKuZpt4RgB2AzVfyGyrlfUmHNIUMzHjTR21
	 2lkDWhuVSuM1vIQgZXeV8PDCrLxh3Pb9uN0UxGhK1Tg6L9a7oezejYCkYXWQvCIVgW
	 KscQy/9v2x9PRUdhJEORfjk29r62aBwIxNjLwdZdoIiy8FMe/yrdguznP6zDrQYtgd
	 W+ZlThqFjsnKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67597C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290268739.22278.13157274588065490257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d3309c3c3e7c08b2ebe30a8ab75e89b2840a1ca652de3ea9a180ceec3f6e49
Date: Thu, 05 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672902687
