Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD522C9C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 15:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01FBC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 15:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686756428;
	bh=NwJQ6raGVzR+Q1EV+5OdKFJrkU072YPwUzBWgZfHG2E=;
	h=To:Subject:From:Date:From;
	b=mbxrzxfllnm0HK0S6LnLD2Z3ZZObW4F6ZVAJaGvcTk+88A0g+j/EQOJTfPswjyTNk
	 Elmt+ZmOotkC0KohalGMyE5abHelhn77qYAoUJGFOK9FrmhoSVXsWnPzbW6oNRzLhy
	 l/bDN0TMqw1X2zCubKtS7hgm61QhzN//wlRIT+1sCJrvZ4hrdin9gqceou4DOwEFal
	 M2ggz3JgsC1NAxEmLU92FBifDEVkGoLUxVtRWnEuXpjnWCEQ3hDPym7UVsm+9xK+4G
	 KOFvP71pUhMHjLjDDodEbkekp8XW9X5bw5+HruB0JfN+buDEFme2hGsA4SUjA1Acfa
	 HFOtpDkSEEfLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A341DEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 15:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168675642866.22331.3770033351348575769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68133029a75230836c6ef3de3d1563561175dfd564b362a71e185e529625fbb
Date: Wed, 14 Jun 2023 15:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686756428
