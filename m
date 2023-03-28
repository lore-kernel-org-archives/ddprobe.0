Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E451C39
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 10:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CD2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 10:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679998985;
	bh=oscGldbeIBqreSMxSQuYs6JtuRm0A/D7zTc6jQOr0sw=;
	h=To:Subject:From:Date:From;
	b=Ipre2Sgg2XrseHS4arxD1uuJ2y9cWU4+W9ZKX0opB8puP5DrpkI/jjh6ISrbh3p7P
	 Wj8PdaiZOteNlT0jglzFYCbIDndISWREUy6I9mbSTNz4UWLq2n09JpsvQMcIYLCA6S
	 tODABntXimbi4aSCOAcnN9ppSHRBTATUMN8Xf2O4liLy+yvFb7Ybxtp4YpV+XzYd2N
	 al3MRhSF9NtXm9RvHSLqLKiImYNeoxSLr0o3321ss4LgCCXC/zqoJabyiKrGXPso7N
	 DwgBw6VJz2my0u4YGnJ7o9GZKcXOz87Xl21ZM1agUQ+xPA8qNtmXKnrh4XIZ+lrVrW
	 CuzdGYEN5JeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96C8C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 10:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167999898575.22430.3564118566420863907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25621588f97519b74c64488cf7c4888a5bab5b9b52f3900d0b01638dd9175c7
Date: Tue, 28 Mar 2023 10:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679998985
