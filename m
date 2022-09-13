Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EEF7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A376C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663054253;
	bh=l6Mkn9900lmB+aLul2/S5/ERkZg0MNu4q4PqTrLGkwk=;
	h=To:Subject:From:Date:From;
	b=LqqwjJRuX7rIfPfFpp8vX11nHxR65vpTqTfEKoRFz+V1VHHMvEmqkEbPfeT4AkJ6k
	 1RNQ7tZ/5gWr8lHV3ZJHkTpn6NXIgXAAolouHVOb2bKeeD3RnqLifKBGDO7D4Ak08f
	 HZXaAOsc7Y5ymVl3Z7/iKP65MFhvzBYNVDAULbPQGgs0l8hSt0cqcUdSMwURwwFuG9
	 uHMRrZYc82F1got5shAWkqYhBapT4GVGoVhxVMn7RAHylUtfFOVQCX0pvwernvxTAq
	 2UP+iURRAIHqdq/FY79JnYlCdHNm6G/sXCchCCisBzKFX+gwHWbkYTDc32UmCfuwXR
	 6zjOJV2on9O5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50095C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305425332.28713.9217705742220135255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54dc56de623e74a5f5d78b2aa32958c93dd2f9bd5c580474e0b0d44aa6db1702
Date: Tue, 13 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663054253
