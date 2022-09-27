Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F047F4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62E92C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664277053;
	bh=9k6D0N2+Y29QzBDqElEkrSl5EroANTV0omiLHA5pP4g=;
	h=To:Subject:From:Date:From;
	b=gUwEYSW990e2fk7NOhndzlsSIySuhC9TmY1JhL8xK4SjYQJyh22ud9y45BZ85E/00
	 gGnSWVzoQ433uBK3veQqFjHmV5aFSdyXZrftIRfRtTtVfzPtXUfZmULkt/C0xPei8B
	 ckE9EwNIdaMm0+TbtwBMe7Vh+kp9waIKqtjWEyFLmPaZFl4vHrD7gL2JAvrW6Y9uUM
	 7qCf550aiTg+PS0VgY37ReJg2pKxnGqga64hbZK5EdZdyWd8auf/V9FdslfaKDU28e
	 sQolEdWmwZDs20Q/kn3+EsyTKZTE0YI17+OL3780OKOZVIBAJpUUU7JL6TyXAPiIzt
	 T6xlEYPeNX9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F59DC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427705331.26634.2168195378176042770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de2720d048144b10c95767b4adf05770488c613d6dc8bd6c9ab699833b78527
Date: Tue, 27 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664277053
