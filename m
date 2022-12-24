Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9936ABD
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81981C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671916287;
	bh=PHQEFqVgyeyUbIr8FzPOVx+XG6niKBhX5TcVgHl73L4=;
	h=To:Subject:From:Date:From;
	b=TbuzLb88+a85B2WdaeOcr0CIgwpZLzqUYXEfjK4M3QNL102Z6guN73HBiqjzhfsFu
	 jreb0hGGJpiGVUqFla1QNOe6Dc4o2woxKhWK2lnKFkcDRFpGNm9lic/FPOZ/prvknH
	 bSy1h22FF0LV62HUGg7XymrskJ23aMtn4DKvSTaYjlPgaudc8ITCodii02vPI5Bhyv
	 xY4SNXESZ72ZnvLOcrKtT7Vd7LEZHz7Lp4CKHo8Ygo/OzmzpNP3U7trtqnmcb7QCuG
	 pKczcrN95/dzEqej1TrvvfFxWU2gajc6B7sKtTUXyQT4GdCqydX/c6yFpTGnyBSvnb
	 3lPyNzOZDjr9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683E8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191628739.21113.13759834512841906218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dcb9ab6138954d2d3f5b54b8ba6f7393456f6ca6c657038d0f8a34e20b108c
Date: Sat, 24 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671916287
