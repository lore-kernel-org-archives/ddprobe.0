Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFCD648
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A155C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666636253;
	bh=39x9KyHaJmzvii4YvtApxPZLFDOsphMt/YlI1YpqOwU=;
	h=To:Subject:From:Date:From;
	b=ZU4xPf01XSrP+aHyLczyMocsB+469rRJmbYSNLAdX2o20kd2MjUxc4y3GkqAfh4wm
	 zQ5/cTnbx91AopxDaaMlHSozLkrUfpkAr41JqlPylYZ3AQEGQH12b4/lkob/2XII6F
	 bw9+/8teAv+I3nbNZKagiPeTwF/U4wnD7/eN8nfI/3b6Ui+RndZFkm1Cx77uwS9Zan
	 GujnNp47mQIkc9BQ6vfvK+rs/cB0/QAhhcY9uxl0plC+BMBGjg+RaXefEPxQvCZFHN
	 5hk2GJd1oSLw9LXVeQ+Wi7uYKnSFBAzq6jJZ+AMM0vxYCZGwaopqdqwmlkpkTrKrvf
	 fiugVTIpuk+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDF3FA373F
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663625331.7267.16853907931875748484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5c3d6b64497cd802716c3a124a48b8f38116c4a83fb15261e149e5a4eb89db
Date: Mon, 24 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666636253
