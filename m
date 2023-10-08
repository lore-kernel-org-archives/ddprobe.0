Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54028442D
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 06:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQIG6tce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA15BC433C9
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 06:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696745228;
	bh=xoVsIm9sy8txhVRXXddqqp4Pm2g5MEWoXq7CsaFQsmE=;
	h=To:Subject:From:Date:From;
	b=EQIG6tcepLbaEH6JRCF/DoNldV7Fe5yi19Lt5QHnP1fYse57Do+CTqvpaKU0r9Ayr
	 XAFuWrPUL44smOuLEIP/YB/VifxOfFyY5Bu6QZJAU1PUgJRf+ZUO7PW0IQxXse38c/
	 8hPVwWVjHQ3e5Ttdeqj+Zb6VkMA/DyMYEm26N6AqudEG7z9sImVSjz8oozBWp1ARX9
	 TtLLvwnLeULWsLJcAvk8lN5odEBAYyYZaXCTBct6vyS/YeKipXcyrNRGC64fAciIyh
	 tnhHF1lV2WlRr72YJnEMPUnViZ3HoxPobyKEdnBH5EuxfqnKqXesX0WOrvg4u79PS2
	 tWHjOERkO69Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6CCE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 06:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169674522869.22297.8970847079151982465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cbc936f27d3edc2cb17541f459d846d5d4770cf538408e65e68b8f96992621
Date: Sun, 08 Oct 2023 06:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696745228
