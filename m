Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9503715AC3
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 16:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ED82C433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 16:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689697869;
	bh=DbE2czjP+gl7/5/RrtMVDteZ6DrQZf7iiUcuyp4E1R8=;
	h=To:Subject:From:Date:From;
	b=QhH5AQbHvrCjeArpmKDyijMOoqiVnh2RKN04ZhRZ9MCh2KikwFiZPsWt9pouIUdTz
	 RIq/6JoJwlLWW68uE1zys/MUcmcwmEok+8mVk79iGN2r+rjtqJxd9SEOpNYyoqsc5S
	 DPjfZ69QLAGnY3qOj/e4m2mpF58qOBDlg5B6pPtcGJD68Hw7ZGkcGofa7ELvwD23yM
	 AiVjiV6bGGFm2F/HIpQ7bz3n65OsWfFpTJiNoCnMGqRuuBJ+4QqfokmZzLyXyITboS
	 Gzovgdl5UuRy1I4pN9gP5t1TR/kszrQfBrqalTOx74lg7l++cozkXWwVmStJo2nZsU
	 hhQ8OH3BFMVqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3A2BEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 16:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168969786892.21521.2187270816506963100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14262c98a8d97ad8e8166d879c6f3f150794aedf413e76618de4da33da68fa1b
Date: Tue, 18 Jul 2023 16:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689697868
