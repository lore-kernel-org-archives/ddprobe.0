Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6497B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73074C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668322254;
	bh=Yi3s3Ce0n1fh4STjhJpO44+QEu89vWUyZt4rBbkxwq0=;
	h=To:Subject:From:Date:From;
	b=bt2NFf+WuhkPL89eonSoKxYNEh/13P/3GXolWbYpE/0tGH8zOdS3HgVZ38UKvKkUd
	 z6rUnUlyaaOwWJEuCqL1tKy9cjP1irSa77zzyJIj7nxHOSStzaA6bv8on1fR73pxV8
	 kRBJm4r4Qu6al0R9QbN9XIBjHbjXP2d4q6T3POqb1uP+3exv3jjoiDx4IeUqladQ96
	 tybAd4hm6A8T8UARtnK7PBN17NFja9stpSWH8ifzEkGtdYB7mEW1Xcu0zzPQTI6sfv
	 tMtVg2kCxa8K/p+o9eSSQ2zPEWs15Ntp8yoTV7qDi5YQCnzLhbuxJTzkpzZP5IYrau
	 ty2OXb5deYKHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA46C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832225432.16621.7831040694270022507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36429784bad81bdeb74c41528128e001f94e8aae1fe90c165bbad0ca5e2dad00
Date: Sun, 13 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668322254
