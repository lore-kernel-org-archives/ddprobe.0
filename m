Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504271BE6D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C9AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689934328;
	bh=NOgfvZlX9H/WalBrwMEbcJajNoELZimlDl0vpnh8mEo=;
	h=To:Subject:From:Date:From;
	b=mmIXUfBTI8oCFbtBbsHOIhnCTS4zGRm50vsCKRFJb87kl+B76rgpVuF1/6sunQtLp
	 JHxeVxXFV12mdTCy84PFuzohMe28XUnrs+ouEvdEbMs/daizh5Zb8zxoPDHD89iSJ0
	 Ak2qjt+RzEzjBD+4L2jPXZO1J5yrNSLBjX3I7TA4soNY02MSX1ZZVIkT+IHZdWh1xh
	 dmzEKJSpcBRStmN4FoNVMXGOc8rZ2U7BA+DtBhty5KI30R3/cUI56SU5vEZ3y2ZC+d
	 aHXXGLDkogY04hLIm+kZaSBzZsco5nTmppCcwEzxOEn6I2MBMMmyjG7gUQzcZqEdY1
	 Km0Kv2+Hjlqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D42EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168993432868.8394.2425093893837768391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f951b0d2f4759dbaab08d4938831fe10b35f47971317adcc2429c4007d17db00
Date: Fri, 21 Jul 2023 10:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689934328
