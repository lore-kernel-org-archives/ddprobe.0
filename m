Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C517F23B4
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7924BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671691287;
	bh=HpQt3/hPxWYnc+fG3aX9xjAZSHAUhmS9mcpcvpQtS+I=;
	h=To:Subject:From:Date:From;
	b=ZHMJSu79JPCvp+XACTbdlCJMJ1Gaz0jJVQdV1ZGDn/lFeuiz4c3wXPhvfVhaTCHO5
	 NoSRR/OaP4qYTbtZxGOnz8Tp4ecWmI7y+EvPbiDL0OX2RpHizfMLJbFR/99xVkvuX4
	 PXJjMhHClzLoSs98oFxqH565em97aNlurOeBReYrf/yVQS1knesY7OObejvKREfbLY
	 WRTe/5v/tBQZKmTHy830C9vExpK3DgtR5s1W7MY5fWXUvw7DzSMVBFwtKjfY0RAgYn
	 kepH9PU51Xj2TzNAc1VC5jS19HkMR6ohLRTIPkIDRHhq25ugFDLDO1wLtt/4E3duwP
	 vlyhyjHezi+2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCCAC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169128737.6078.14844018455705103472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a51920c120e649cc663037d2e5a55ad685eaee66e09d829f372fb665cb64f6f
Date: Thu, 22 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671691287
