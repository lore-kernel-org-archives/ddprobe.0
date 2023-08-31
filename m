Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F898F57
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 17:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F29C433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693502648;
	bh=PNfNjwfXQHFLF0x78BnjSjXsqx9V7oVRI/lLLwG5epY=;
	h=To:Subject:From:Date:From;
	b=VkDOleQoscj90M5VnSZ39IYrSbrDAWnJOiCJ+wV6cXitTNM2Fv2TkAs9nENLXUSm6
	 OqxbyG/yJh2x/ZlO+RXvyttWCcabuj9C20zPbB3p7zhSxQjmCowR5skCRv9wW2foVH
	 /H9LvGuaDKem+dl0PHqjY45yWtRFzLqCCMSXLPIeZfAVuHHYsywx0IAt09RIG4rhBD
	 TSvIE/VwTWinzQqU+D4gq+tpIx5fAGZ+Wvp9RC/ZgL/pxtM32BniPmJdZtpLJiy3JH
	 8KJkL2aFp/Jn0ah7CuJmzs0YHUomjurJOuq0NrlWjctwYVzClG/ZFgfgrofZq5L3qM
	 67L+xPaT+G82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB86CC83F2F
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169350264875.11342.18065127358900574323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce9563736d7f6d7c69e4a8e71bbeeae36fee89b4c83ea89feb8d848307f1c2f
Date: Thu, 31 Aug 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693502648
