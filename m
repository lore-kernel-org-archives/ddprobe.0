Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E383137F
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CCCC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692435248;
	bh=HTwd+s7ZePE8bfbxaurvMpUiFyOfHeiUNmM4Q3x69fs=;
	h=To:Subject:From:Date:From;
	b=T+jLrtjNikcGBCSlsLp913makXPdVefw8xPpzOWq7fHZ+ntxulCzn1eXwrOIudMHv
	 F3VSOzBVwjMspK3Na2ygWoW+UQdYNS1QB5+Rqm6SSutgPfwB2DlKR4cTKtL+O9cgPJ
	 S6su+i+UBpsCkEpB9K7N2RwQXLQGgKMFl5TOROh+l5t8VQufHMkbnBYeVWcVnHLOvQ
	 vX44JV5u7Dc5F9kkvrPfQBKm1dVZBqXYO1RSVgslGlLUi4iIy609TJfsLBSC0QkZGy
	 TPQQqDFWTUgOXxsSh1XEw2Dh4pB2dRJ1gHyJW1JtauTNXlwhhF3BzujkUAFPozWzww
	 YD75HdbZ57O9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B1EE49A8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169243524868.7714.14509489301824513448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc0d67f408787bba9abf448838ff85a2ee34d5884640ab537b013b479db9534
Date: Sat, 19 Aug 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692435248
