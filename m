Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2B07F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA5DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688691428;
	bh=CU4XVk/b+hwu1YHGoDsfchY3W0XMocyREbZWqe9Vo8A=;
	h=To:Subject:From:Date:From;
	b=SPbvImmAGdXKn1GXbdkAnT+osv6YALbTLXFiS6OoOhF65rK8PLe6T8hqvaKZ9sj2W
	 bR0ViuWH23rQ6RV+AG37jRpKD4r2eRvQ7uDKEB9Rj34SyOs22/bljoBUDF09oOSn/C
	 xkFkYYuQHrz3JCeKfQ2HlKgjnYkmyMVdExDHpsYTJ62cfMZtheo5hd+Jdlu1Yip/RV
	 OYhHm2ep0MoZPGWB02WH6GB4fsNWD5urZYGlDKv3xv4XH9bsXz7Gsnv059Qa3s44JP
	 urQnTBVozy7e+YL0q5dDnH6zFWDzY/4vq4RQOB/ple5utPV0KMYuTKse71K3V2q64Y
	 r9kiUMHU7i6wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B99EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869142866.6000.16515934165535900164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e25ee1dbfa7bca64242e1e6ab783725f5d371d6c90b22314e1d462522e45a83
Date: Fri, 07 Jul 2023 00:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688691428
