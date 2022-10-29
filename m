Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F7A2574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C01C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667055054;
	bh=CzxxBu1pHyyPiVaIrUtit8eXSve6hJyiiq9GTUWrREk=;
	h=To:Subject:From:Date:From;
	b=JsB+ypRWESTQedmwzG2vXyhRYcMuIY0YEQwDJHokmKIs3I1K8Ar+Sri0Jmkuravv/
	 Y3uN1nLTLoJ1E4Iph6/UDicJd7mi2zIHb1qc8gYm/TwQzsfHN+38+5dy/tnprp1WtT
	 JZ00vOHTCJHWIeqQVE/wH3k8UY1BpM+kyZoyXIfmBMT1lgyyW1PlSKRXYVDzDXG7Yf
	 d8OE/E2yIxJDVW4orB8Q9OEnHhN31/EWJsUi5EQDArcXXHSNRZtWPUtfyWxNOOtpjJ
	 MN3jUdhiuxNN7xN1Kscpg5MkxXjqecxSOH+s6/yUheL6rVJAcXqkSD1xe8ozpjbzJY
	 zCCZuYoOQICqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575E1C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705505434.4781.4515337424122403309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8f9c84436571f3349fd3b6c56a0751698bbb6ed21a98149f2ec144bac06656
Date: Sat, 29 Oct 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667055054
