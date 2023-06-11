Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19832CAB
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E39DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686513786;
	bh=LYCbETwxDaRs5SdUQlEa4VLYql0BGMOMHb1DDwrAveg=;
	h=To:Subject:From:Date:From;
	b=PnqxHjV9d7Yc7aNWY9/YS3jd09v6U6PL50RuhCiPqErgkwrp/0giYiImqNGmYCytw
	 ZgIEmsWE45arjReypLXAXONKV+A9PbjhLsXUTUOZ/7TrG1/hZkFzWQJo9z874S1DW+
	 jFIDSWGi4zUZJceZYKNdXOQlflHWl8AoKJPWbAOTNS1qsjtcgK17biczw+kFmZaqdE
	 z94jN8Ms9PccvvEsGHX+E2xSS/LnezZ5IR+ZZlxrkezbfpKq7iS+EUKW0X4GOOIUDe
	 v9TGRSfdagrz4ryYLJpSpLuyTU7ZzC7T1EBoB5i66hCbATcrLfWmZv54ygizIAk3V+
	 0M3Tk0O8orvyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D803AC7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168651378584.2617.16302563969097998339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6568feab8ea9c51c42d29ec0f81a9706cb0e20b8967f7ea3a2ed1d6b301ce3c7
Date: Sun, 11 Jun 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686513785
