Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFAE253C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 18:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83C3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 18:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689619268;
	bh=rab2y772K304OwLRMAPK473/BdZSfomS8W/Pg5qIAt4=;
	h=To:Subject:From:Date:From;
	b=Sp+ZseggCvf64Nu97m/AClrkYrG+cVEeMUFnDV5TEHqtc9nS5W0Q61RdNRa071E2C
	 AwLf1bSTv9xqmyavzmAWEYMFhXGwQ4pBpmqq0hb562eR+ql1NWHBZA2eGabfGC2Msz
	 CKvilnLJFmAKhwHxNzfSblacLIT3Ab56lutVsuMJUIBpaWSuh1p3nWcgPlExfDox5J
	 UosawHTshckWGRQhItkJFgTfwoRtzy1nrWVBgIJAtqbtI4gkQfIHjz/n4PyKObFzI/
	 LxVPYJIZHwL38nOcyybyxlMJ7bIVfa8k29pqaT6npEJTPdGXhNH5uBi6GF0Q+/T3og
	 /4dCZKRR0M4tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EAAEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 18:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168961926873.2937.11027090665110688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f40ef1095ab7e7bf7d02a844cee98fcbb0c819b36cff91636e205f052761597
Date: Mon, 17 Jul 2023 18:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689619268
