Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B40B17C2
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17ECC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687504988;
	bh=SwbOoF2TvrMFCg4YdkJ8yYd/yH7hPk4Dn8VpbpDZ4s4=;
	h=To:Subject:From:Date:From;
	b=n/uT2YlEnbv3uQkbWVrIhH6ARsfv7Jv15UIv8IWwn2tbvWV0nlNtFbDPfy4QzLxcb
	 z1kg3hFgKQvIdKXdl5VgewbJ6/mgWefMzsO+CwlzNklIXmrEKs8JKa8oDSYPL3gyqW
	 Y0JI37UVQXSqrkb+/mTCNlgCpPdPZA5QnpRWFXEY04jY5g59bZgH4ZYD6ubtm7Wmjx
	 VB2Co3l0EWqZSnINL4b2ulWA0FrdITjcuK6UwJeAbtafMYr1K5TZHRDIdTvmZmQATh
	 ND120t94Lj95456lxW+kKeXSaylFQTkQRKPpTyGkWrcyka+wcUluBmh7ok1yC8pMcY
	 9klTUgVPCssuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C04EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168750498868.1793.620355459636151307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4def0d677c6c206860fe0fcc22fb4efe2d7eabf8a25e31a22d035819f148c5
Date: Fri, 23 Jun 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687504988
