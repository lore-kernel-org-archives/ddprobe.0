Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4DB33C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C47CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669238454;
	bh=d3G0mO5uBqQlZuDWrCzQVRKvjc/4JTvTkbybW8QbA5Y=;
	h=To:Subject:From:Date:From;
	b=kOcFI8ddU5z6rKjZuCBlLn9egOkHSFXqrKPTsfM1LMlJ5COdCgvBhQ+JyUv1NoWCj
	 EODhqiYoYrcUcQBdyv5CLdUzJbHLlXtJulxgyqHKV/bPEyGPQm/zGw5knXP1PAFr1F
	 QA5a7fH5s+gD3qJkpjfM7XA1gLfeisGBzdis+D6coq96EdO/X9jYY6ytsw9DqEHwc1
	 1yA/dSEGbhoRe5VLnhTXBMamm3jSSlxkPCMsMNbjvY+EsjJcTSZ/t8xH2Z41/hJK25
	 egmcZWl1OhC5S5obC5cvXV6Az4RkSE7OxUCYxDw0TJjeTJRzlFz8aVwvp3/pW1tbWM
	 HAO9hfdh6/QqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52924C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166923845433.8740.16826764117028527537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf6e1e859cc947bc801d071b0b8a3510d5124c6d315046f0b235749f16efede
Date: Wed, 23 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669238454
