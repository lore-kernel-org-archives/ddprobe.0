Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C2E6AB8
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63B4C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680612425;
	bh=1zeB3TRdB51OymNmfz5BqmmzxtG/krC82AflJaJlEs4=;
	h=To:Subject:From:Date:From;
	b=iQmEEwsbLAO5dpwHKQ3l3D9kiaqJBEXTQmM8uZhwjLzFz+lYZ3Oy7pLs4t3Pb+a4S
	 TeMgMbuUMW2bcmtQiK0JMq2BolhYnCXOJ/s07+ll1FTsfO9FpWlPsSOMgXpMBnFVht
	 ELZt9Hcr+bTJCalkIAv48PQVX+xGYVlLjWA30u0WVuRI+R+aFvFlqGTbJ0Z7uEreeG
	 wRt4Tozmty8611AgDxpF5uqLrg9dX0jo4s5em7mUX4ckR8cDsELY4NHZceXf0+qGoj
	 BHHFVW1OilV5dvTbcrRfQa5rpMNkuurxC6QDv9f97hE2ZaSxj6IYRy13i7CrwIxzQq
	 UPIT633GBswTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAFFC761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168061242575.25609.8498358963042336554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9643437c07d68a3ee01f7d604c3f6d6153415f580ce25834f6fc8387b09a2aac
Date: Tue, 04 Apr 2023 12:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680612425
