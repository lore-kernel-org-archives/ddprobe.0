Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B01028DB8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kizEZuh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CC3C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702729696;
	bh=cR+aUkT6RtZCVnZs2CmbSGFU6IO+NN6elQVp1B/5BNM=;
	h=To:Subject:From:Date:From;
	b=kizEZuh7nFAu9QmnWre/B8kd/YcbYZM8CUP69HWGmU4qC7ohyFoVLtdytOguAkANh
	 5MUOA9J2+uNE0h5B+iFNiSMPanTSpXpzoCWEojra+86eViHe4DKjLZGr1YTJsbQBN5
	 WIQ3WDmtfGzTbDAbO0pdvn2EdZxfevBEKAjBCanX9FhlBouKBkL5QolMyUPqeFm089
	 CrP/t+LFmc1JhHk62FzSTzEDmAFL5dy/tbJkOGBnjWM7VYnGtvyrZf3c9IXe7//Xtm
	 bWr44eO/ZaSoBXe2eZj/ljbUQHWwuLPpobUr5Rv4jZnCvnYyMeY0Mr7aQ40XqRze2i
	 L766xLnH4NzBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63651C46CA2
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170272969637.30206.10565581949407093781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f093d942c05c2e3efac6471a3d7556b3e267dbec365b4684080c412d124090
Date: Sat, 16 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702729696
