Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E84370
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DE8C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665794453;
	bh=X5Qi8LcSXZxfh1DeVWgyd0CDeklHGfcA/DuY4PnJEr0=;
	h=To:Subject:From:Date:From;
	b=KAwWYeeaW1JJEB5rIFFU4q0/uCbAU+7TryDwF+Dr+n1thuqqaaem/BrRhbflgTHgC
	 Zi+0/qASFYAGU3p6ltjsFJOACoEFraPWTsZGUiBbihdiDaKm7nYC2A+dmyrTTC623d
	 1UzmNL5CvpMfbCNo5anB9jzblzsoXRhihmNUERjEd4cnpmsDFeGYjet0Ju/3AK2PAb
	 gAq8GJPzVS3PYEDYS9Url3AF/uXKW+AkBXzgpazyHzeI357gLFlUvijuNe2Y2iHXSd
	 OAUwv4+1os3dsD0QXPzkUiPWWzCaUT6OGzcqS3ocJ4b4lbLSqoHEB3rf+NU3UYcs0D
	 tPREWi6UXSX8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CD4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579445331.29925.15581807510306701882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de7b00f4816ee5f28a23873de8668247cfb492791881a0663b02695d8e79cfe
Date: Sat, 15 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665794453
