Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5806105
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785F4C433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661977253;
	bh=qQ1/waimoARCll0NYphot8jW6MH2B2WmV81IZrz5lV0=;
	h=To:Subject:From:Date:From;
	b=Myj2HUVod8HWOR5N+5VpaOTDu7CqorDyosvYnNcTP58+Z2AlyvuBdczWPEyftNJV2
	 v/rWENzCYh5a31+jcavoiN8bDP7MWtSWmQ/ffY7/NxtzXDEUMtMbpQ0nPTSbchH6Bb
	 DZI5j6NiSDFGu6G5AEWx/GWlO6xkX4IqFI4r+07AyzVl4XzLlz+iMklRrfUFSwCChW
	 YhgSk8EXil/+fGcFaFJdMpkDDjDHITGcs7pv8pur1g55JT4siTWMNakCvwbHxFeuga
	 lGJcI+CvhvDIKz+6NjYMiFn2IfclmOUFtTT1G2LwEFq6VuyZkfBQaUB8u6U7MmYimT
	 yBH20/LTZIUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0C0ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197725337.27428.16308661816370422746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1051663f93b6d297952fd610115c6adab109123de17e4a95d5cf140faf5da83f
Date: Wed, 31 Aug 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661977253
