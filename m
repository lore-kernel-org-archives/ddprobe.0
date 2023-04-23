Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C24D815
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 09:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CE19C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 09:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682242866;
	bh=ZuxISVaBwJ7+O+5LM2IYEaAaHgmWoEc4o8fVaYbTNn0=;
	h=To:Subject:From:Date:From;
	b=NVPvxT5T6a12yeigj2gEaQe5/tB9vozPo5ta0tws+izVfWfJWJjYfIm4POHgAlVCc
	 MVmqG0rLYVv10iksbvRiFVxse1GY65Ml/XGJWYwJqfGITs1+SJ6i1LXX118sFmc4A2
	 VpuV2uUj68fU4AiOvcOeEuxfiUeKuYNsIc8aMmnSvHrtk1go8FmrTrAa9OdIjF8l7I
	 HFWadHEvakuJn4zcm4G3rhtnlBxYbrUbueVqzIhFAvMd7ee9YaKzdUJHH2wHIBn8AZ
	 tVNpIaSOwM4oTtWVixy8m2FdqEstO+WdDYMZnaNsy6XX/eR6XvPXTEnmJeH073F25H
	 TFfvjkcnS9kBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA485C77B76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 09:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168224286580.15961.15894425264230764262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f377b0e8ca1873f984943c30ee53b7475cc0d168ffb817ffd4aefdee561ad5
Date: Sun, 23 Apr 2023 09:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682242865
