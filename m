Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFE8808
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66CEAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664280653;
	bh=ImII6POQfy1WZubqM0oZ41Q7QL3AhtvoWup2pIWHyik=;
	h=To:Subject:From:Date:From;
	b=f4eZ8+G+p8gjX7W4/CXwGc9wDRK73S/Hig1ONT4iOoqNON+Ar6P+u/firvhKupOJ+
	 D9VxxdHgsT9ra3Qh7BA7dMDH2wLkPtcBTfmW4F6IjgzxDIWxL/+3Azg+wB+plOHf/l
	 pb07OYVlVHM3GujZ36E6e3M21riZfYGPlUCkgz4GahUzX5Amv6blEwDST5LMU9Ob/3
	 qr5Je8qusJS+dm7b8BXXfPr44es/5xidPa/Ed9QzxqGHZhGWSIx5R51pbEgycz+JeN
	 vDl1HSGeKYaWKEg7S0e5CGjuGyqBN7/tR3zccfEIdPomspOp+n5TGuaVbJV0BNiAQ2
	 FuImM9ROdDAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F80EC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428065331.3591.5579418035495413681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b15c563703f49b9a2d7000e951ce0b97275cc4dc0adb73b80b949c462788e00
Date: Tue, 27 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664280653
