Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269F815BA
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0865C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683338885;
	bh=AG2Witd70EoYlde3cL1Dab64D01pt7kLP4xnZDU4ZB4=;
	h=To:Subject:From:Date:From;
	b=Nm8vPZ2emxBNcXS8Ou8QNXY9RdMeKEBoHxLSSq2HqHYc7k9h11c0wZ6r88/MC7TWB
	 SM3ginag5HS9cn4F7L8J6UK/fHnnqZCeuF2yKB20FEYyvTGxAfYFX4g9Y8SKwmjvvS
	 DMjdFxFGguii5Y+CM2jH/pjIVA+C1ts8CNu40D9GjG59d7yJxy9bMTMLFcgMVcq9jX
	 TvxuhiUycdZRtknzftKzbIA0RRPvdQT6QhFuS9R89DSD4wKhPx/QUo9Ay8T5BOkuho
	 dET6+goiD3IIeUu+EE0zmu6YrHtwwl+odZjxIPBcF9ZpxXhok36WOuf+WD+TWV11d4
	 pxxZ0vYoU7vFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA618C77B7C
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168333888575.21507.4305318147119184039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3cc8a2e77f24f382a4f62f2fb6516a3b1d3011711c48f5f37d49e6afc3cb7d
Date: Sat, 06 May 2023 02:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683338885
