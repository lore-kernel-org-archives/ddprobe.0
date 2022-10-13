Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE087B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A6EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665652253;
	bh=TJS9nGBc80V3J+tjLKd5QcuiB6QsrligVrkKJTtMZfA=;
	h=To:Subject:From:Date:From;
	b=KYB+ss+RTj997gbfig3wOFtwZDjI9oTQLYy7U+AUHkQfPph1wDjXjG/gkxWjIbWry
	 /lVGaMO84CnX8JO1uqJkI6QVailJ2fMmUFAmMv3MK8tbYUW2JcbnnaUCan/WUcunu3
	 oE8hBK+tlfw7CYqSvBw5AeJG9x6PK7o91iItm/YzJ1756oLDNDFaD6xmSh2nv5wvK8
	 fH2o12RYBymw2RIM//nysO8+idMbvxCcVsuR7SDT+SfA4NPpiAQqSGd1HzXwzIiRtE
	 /1M9dlXwGBtRrFWJHd+f1Zpo9FbpRMnkGh3lKMZIgm1Ovw+WO2G0yq4tY+v9Z+fPpx
	 cHc/Fbzgkhzhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E796C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565225337.16704.8782658672392465920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2d48d2eed5a19cd371dacacd765e95250b576ac1166ebeb62e7fd0f20867e4
Date: Thu, 13 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665652253
