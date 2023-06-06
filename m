Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BF67F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4C4C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686016925;
	bh=vEjAyxSwXPFtEA2fAKug8BHu6Wxmveq+V3rvuVTHzro=;
	h=To:Subject:From:Date:From;
	b=aW2UiEFSkiF6/QwO6XRWWz52A8AoZmScfbnrmcFQcU3TroXNMI0N6PxRX68n9Qfw2
	 27PuQ7LtQzrplkmQqzNkHkcK5UID/sfz/rqwU+u7yo0L/enzvJWuVNAzG6xM4oSjaN
	 HGz9KQWCulJ+R1ntDgSTVxCuW6yYn8XQCv4Sw22nDELZzjBGu6IMThhO5qjOIyOsGy
	 V+48ZQE/KkFpVSa1GeKlj8WPtzUtHrVZy9WZgZuauyODeO20UzdUfms6UVUd1PeqCo
	 E5UZbCAavnewJMSDpIPQsCxuHHKQ1ZVzRv8sYQPDK+39MYrPted584n3AVTJcEIF+7
	 NZo73tT7ggkbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB4BC7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168601692576.11175.4917199851122689291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca263ad5604e95b5bf625b3664ff0b9a190eb12860b7537a9b8c65374e7df02
Date: Tue, 06 Jun 2023 02:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686016925
