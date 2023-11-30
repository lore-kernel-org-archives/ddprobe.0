Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D748200D8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P34OPwPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86348C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701329896;
	bh=hzK9PtQQ+9HDUzGHzCyQiOudL6ZFkue2sDvGxo/sXnY=;
	h=To:Subject:From:Date:From;
	b=P34OPwPtriUiCowGC+M909GmqO2fkU0xhqlrXtfNrX9y1DyoLhJ8BPpeposnrEwHo
	 DRmyhyEKO4izrrUYZAYCn3a2qbv1Eq1F7JX60Vu6bE84PbtRs+nnKe6A8BAqNc+MGy
	 owsMfGPt1UkpqaCLK5HGs8tdKO45bA9me5StjE6WKu0ui36Vy78FiaETL/01iiPRG4
	 nCn30FI5LlPY5DX7JlwReun2sjfObx7RWSry0U+7uzYztEvzPUZslYA2Utw/iikLtK
	 j/RlT8N1p4hwY+cWiNFF2559lMp6SYFk0xBoc+tTsboF7i8wavOx1ToGh7mL1aCSKn
	 eiEd8P/njd/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E76C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170132989641.24824.17010743122826901000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5109df6041b560e055a46a1a488cd93c3081daa494cd272897044bb11920984
Date: Thu, 30 Nov 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701329896
