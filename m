Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE04A23
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DD1C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672970487;
	bh=FW0TLDdOpegbDYJBsDdkEwOToDtwkrHW5MO4/PD34NY=;
	h=To:Subject:From:Date:From;
	b=p8RSKFkmIXNMBw08BQwkrifQtumeZHM5B6zDybWRIHskNyJHKn1O7jyNZx1h+jA0x
	 C4Z18wDUmuppyWavlgxAcVXhaSl1CRTEAy38HoJyRsqblgcgp/pfCrZqCX5M2fpNue
	 kFbX/3Ym6n/Bwxa8uPDymn54u659J/m8/+NFBhTvOCndf8uudF4ZhFjTpJnk2s9JpY
	 7//eZKq16aNMkxh4A2cCKx7KbrbMbAAAHw7bexSI8gqcjdN+1m2WlVM1uwtMe5Ow55
	 orJqczLUPsUw8Wdx8oOqqA0XL9+0UqQ3JM9b0uNmp8mwtSjx0+RQkFY+IH66Betk71
	 hsHA6bZ1UFvyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D32BC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297048743.12776.12100171579386676982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6596e6f1cb863b2fbb56c135ea2ca2569efed92a63d545dcf1d0a19fd88ceab8
Date: Fri, 06 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672970487
