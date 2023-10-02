Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB78651
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 03:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5144C433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 03:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696216568;
	bh=Qi6p1LwLdWnzKL9DyCleauG65AHVi4VwPp/omvYbc6Q=;
	h=To:Subject:From:Date:From;
	b=iAH9qosZF4nwfUVrkQIwuMwHM/rUwa4VWtKuYgmfcOydHOBtOJLUyWnNDfTG1bXz6
	 CsmnlvC3U3lzNHkbRmDBLZ+g9nRRQBjRFwik85EJq/ewjo81yyqV+euUZo5v9KhqhE
	 2RgzRrcL8UykqG1zgjgwF1bDpRRt+dzGv9xnS+KTc2h+L5difj5Scmec8xO50O5lxK
	 Khs8PGsAfK+RhfqD1jLAh016eOan5u08ijaPqy1ctZFDmk91qLlZim/G6xkj0rBogo
	 XXcMA0Am2G7bMW67Unm/8XW51gJy35jkBu5grPtb9TkqZgDzk9k+m0ZZCiZyii+BMI
	 1duAJcJ6q86Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CCDE784A6
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 03:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169621656867.10491.10929322888834413816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12a4106b0a4dd5ad9f33e5f9d590f0a46017e7aa4d19759fc97331fd19d4e54
Date: Mon, 02 Oct 2023 03:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696216568
