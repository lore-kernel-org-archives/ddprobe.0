Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EA8EA0
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C552CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691103788;
	bh=AYZ3/EhEhxqwGWpTYJ+p09LcWgq45ljS2SQoqK1SK4Y=;
	h=To:Subject:From:Date:From;
	b=U0Ug4ZAwltOXksbSal29DJ9QkeVnsv1fGtBPNCeL+5t7lmYCdfetTUBsH5o0UhplZ
	 ydbyqfG0Mv9IknBD0RO6whvNuYUGr5JGhv4lrAstD/0dvuJGtUm5nXSJgYfjmD24f1
	 ENOCBCmY22rWGVt1zYYZW13YTacvZaScQpdYBPVofRLwi322CIv9M63rGoLTblGxfw
	 rReyl6N457jMMvvX9f10KOQKKOp0wRFMh6LleUYrCvww3dGsiHikgQIF+m/TBQfdzh
	 AGJe56nXy2OVbfmp0M4n9iTcN5wnlP4VlwTc4i5No+IfPJjx0NTHVteQYtL7UVaPDy
	 v8HE2KRNYAAGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E97C001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169110378867.4487.16403022314588148590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d48ec1f28f764bd00c7d24d7c497cb1603933bef644dc93dc0aa7cbe43943d
Date: Thu, 03 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691103788
