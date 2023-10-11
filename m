Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E143C8D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 05:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWZSJbL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BE7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697003828;
	bh=SiY/v0Bf7wTX6D6PLXnw+jzTYrAVwudHzoRqNdzzv9g=;
	h=To:Subject:From:Date:From;
	b=sWZSJbL+VkOXW9T5GMlrlAcSPKAFJIkENoP445rr13CYsXGHuR7POHfYUPntea7Ah
	 CwbyD4vQG7PZE1o6m3ZOFmWbya5QFa03a2i8rXB17GW69EYtAmNs77XVovE/DA8Gze
	 7rniPke10EmqeaAli5NxwQqcsolMHzT3uMeFVTydgPEvt0o1GweS8SSTdlQSeuEyp8
	 cv5t0vTXvimlZ1AD1srHm0zd76mN5MGDJE8LdprfbGqFmkGBLgCvkVhR+ZHD9JsFBe
	 ou3INvL+Tc52ku+IHMt3DSs3gJB9dPj6EoWtvnELIirk6G8aVu7cfhzkCrs+XvZSJD
	 P9YFmlqSJ4zRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96E7CD98F3
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169700382868.27393.1483464874280229999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734d8c574b5d280fc97eeb53f05da0bf2b1fa9c5bcfe0248461babfadc27147e
Date: Wed, 11 Oct 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697003828
