Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42C4368
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7510FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668192654;
	bh=ox2uSn9XfoLSUGKTQQRoAu9K0huyX0fsF/k1QDE0KiE=;
	h=To:Subject:From:Date:From;
	b=VSoSZAsvhN8YofavgexTrIR7ExscgNtCClzLX4YCFdjBRaJTsq12ob1HKmNn5/5ab
	 pW27RMvkLyyBvFB0J1vl73aXerT5HX1AtF7FjkqCAtHaZCGY6HwHz+aNaky6mTGdht
	 WnmMsxSaJ7temTYkvR2j75ag5qgdVMcH5sKEc3lwhr+MGvi0fMOX8MQFSYjDJ6hRn8
	 FvxFYuPzQoufLFwd1GKxONRVj7dX4q1MWCKnXhtmBct4MusnkTwrCQAypRa2dQTkjs
	 nu1HZ/FiiEFddXqIl58vnYBOY3KQsv+pP8e57IM4HIslYF4aWamS4QYi2T9SVYarh8
	 OADuwQGfJarJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E6CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819265433.30261.12242562860375782451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dbca14e13230bd8abdc627f3d9e78ce2224dd773c20fbaf34032be9114921b
Date: Fri, 11 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668192654
