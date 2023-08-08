Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485D0100B2
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 14:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BA8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691503388;
	bh=hoqu11uNVAKDlII89KUgOCYcky1hoPv8Pjjxqk718MI=;
	h=To:Subject:From:Date:From;
	b=OQYB9w6m4f8iJw6fOMNWV6fHC3mN5HvAVM2K4MM++GXrziI9cIN7UHy4us5Hg/DMn
	 qQH8Ql0ekC4JX9s3pMYmv8fuUMuKGzi8DcGXb6TsFbObFkWQAysgqCPdBLWM/tRe/B
	 63BCIRHIoifyBS8e7dxd2X4fpMO642nr+0ChY/Fh4+ROA3kCd+7pn7ApqYIMtuF1R/
	 Iu5WyHJqhKO49PIa4E5Mzm1SQHnFoLO3iWUmRaYo2el8j7Mf7Nx5uXAL/v8Z5QYuzl
	 OaVgeGyhGuTVDfjRao0XreelxyJ1eRerycQFNJQ89wUOb9lTQbpBqAwgjGhtCiemjF
	 Zm8xFWDtEH+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D7DC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 14:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169150338867.9380.2348654230173958279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef989cf768cc17b29e8ef033e5b3932a6c83f83e99b85ed093cbd713758d3a4
Date: Tue, 08 Aug 2023 14:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691503388
