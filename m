Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BAE2F38
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 698FAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667134854;
	bh=oW6otSeqE2RgqSXNfcoUkKVPJI1E7wcMA2m1RnSzVh0=;
	h=To:Subject:From:Date:From;
	b=uQ/vx1tGhnm0hga/TB0CRZD5rXvz49isTMpjxhrdaVuFbKU9GBS09I2eBQtBDqjja
	 jCPLFceU5kcXSZdQjKo5jxZq2nYwFE8Guu7rj2ZpgnTXfWXoAQ9pNq4UkcgF9YmTWE
	 bro8aCjSLjfcIDgpPtczkDc+21JhhI+ZdaIriXbPpZSLwtdmYQ0Sh4IGtLmiqVZVho
	 NXxgWngwIyesuQ2T9wdij9PEtpX+NJc6KKVpJrudP69uiwKEczD3J661nsv+yLWECG
	 2xNmCCvxBUXqq3VhSMYtLIyG2L7+JaJ79hIC1IH8RWd6q4Wc8xRIUEEERrauPNfufM
	 jMonivQzJV07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523F4C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166713485432.30014.5958195654739064518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe2415659157e6ddcc15fa5af2b60c48cb2fabb0bcd955a15e7f2d3745cbfa3
Date: Sun, 30 Oct 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667134854
