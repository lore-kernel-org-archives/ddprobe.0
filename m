Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52DF7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2F6C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671537087;
	bh=o9oI9NFDbc/cLhQGD/HJi4LUqJFXaDxH/dnYTQQXefg=;
	h=To:Subject:From:Date:From;
	b=prlh6PXQa5bT/4Y/Cff+qoqHHl6jMnq92hJ2wnH4Cer8Wq1cDBwggZLL7owejmB63
	 0ZTz7GUBLxlJyuDdi8GMebbxcC0XHrzMzTQ/9+jObT3lORc9Bes37M9wWpwbCEpbtR
	 BC+FHM9sqbwD9VpMpLXrKrnzxcnsK+q4au/LKhOgUs0cRoebYXAXlVoJjDwVhTll+E
	 MJHzi4WPcshPpBUjQUfLNBANIazVQ9XuT4fZdgdJ0axbUc1IF6NtItiHCO08AchE0H
	 iAyh1ZduGNK1hkGWbq2uZzr0UidfXtQ+mjxNoOnbmwRUxqOe21mwfLJZllnyGyZYna
	 Nxfw0Usf84cpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60938C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153708738.24521.13049056914314128374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c816873cd1e57412836142a48a0e08ad419112aea4a3ec105d3dc888ce45901
Date: Tue, 20 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671537087
