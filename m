Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6836ADE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 909C3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673614287;
	bh=rAc1X9hQ0cwd88vRivIfeabkCH/f4xaJ//gcZUWnO3I=;
	h=To:Subject:From:Date:From;
	b=tZK1qwoNEz0tDv0864/5+2CJ6m9u08w7UAVh43mcfm/yN7B6xKC4vWaYnnPoctJMs
	 jv2hxsshToX88jEm9WaHtU2aVjK+UrTHO5D18gHm0OHYnrk0sp+1CzMBOZYVCc22Q7
	 blKEADSCGGssAfMWYs9zJ65YJ8qe9VbGQShM8QU7ZA6715xqL+FgX/d75MGq4Pwvp+
	 Md/JDsLLUVanbAVf/KRfTJftVW1vqdLu5mMufIiv9ubAUSEWngbA3k4YJu5XM0TLHY
	 9Pep/T46ySuAmiPIqNXAw56j/A1PH8B1OEud+ZwyrOakuYizIeNzsW33hh8pi0+JNu
	 aG631PniqjU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADFBC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361428742.30375.1512047364835057868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66d2f41effcba0bfd6570a5725fe51da0cac7d318d5315bef9e4ddfbc0c3375
Date: Fri, 13 Jan 2023 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673614287
