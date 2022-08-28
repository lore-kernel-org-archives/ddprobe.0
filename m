Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92F57C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74837C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661655652;
	bh=APstVbc0Oe3Gde9cTR1UBEJkkOIUngu/Np3fYyGXg68=;
	h=To:Subject:From:Date:From;
	b=pmRYe15QF3EZXNYgJy7lb88ujzetPLMp4tYLvW8baFQhsf+hppdobXiebXK6rwoNH
	 JYxK2OlS3qveJpZW6svHAlisHyxMrtyegwMPLo9yT8qp+ds+KeMR4WnJ6pJfnzdioi
	 v8aGirL0UAn/MpeEPbM0w8n5b1a8i+ri9QML39Kl4wWnIDh8AkHpzMtfUlwgQSQTFV
	 3yAFCyBDlj7MUBo0AtD2qQjFPy0gT+4sOu5WJ14FMZoOMEjgPt+xVwJNLKa2J38JUL
	 dYbxLApabAI6P2D//+PhJ8hQFVl/stM01Zd8VcIa0x2HbelXjI9Yz6bYmDzej1Hnmj
	 Xd2ECB5rhl20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5870EECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165565234.22020.1579629042158864799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db775edf098204e19f971a0d013b3c7c269dd37f33817b8051f8b6274281a825
Date: Sun, 28 Aug 2022 03:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661655652
