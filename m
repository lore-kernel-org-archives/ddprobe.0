Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6A37A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646465184;
	h=To:Subject:From:Message-Id:Date;
	bh=qNsEmSRrgZlmVpqsPoxJg/D/VtBpD7ZCQpacyPnj158=;
	b=AGj5H+PZskTQs/3UU1zCwKKIUAy4gk1iGJV/exH4/vomEt6ez+7pAjeqpmtRhHr1
	YKaQTPE7vQIJn4DWt12fUtgtBsz1JGpO5XLC1n04dfjCwa7a4Q6p6ippgjNkDSgweVe
	Vcl+KxxJOVTRtQm3ZJWxxt5wR+0InR3dDNHD90dU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646465184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qNsEmSRrgZlmVpqsPoxJg/D/VtBpD7ZCQpacyPnj158=;
	b=XT42/rWjIKS9ngSS9j/j8ywMtmBGka8tMRrXcO8k/ltCDUo2YHna6u+auV3JS+5A
	Y8t50yqnoMVcum2WsYDCd91vUMMPRzCkb4MbCCcVn07MDYqDtwA61Q6EcsfZrgIwfEP
	7qXdTJQ1sCZHULb5RloY8XsWa+8p7Y/AqxagjHuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58f8f406-188eac62-cfc8-4b4d-ad55-3d4833c4a9e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe4056dfc45b5986d9f932715cf6939bbfeab18487c1260babc53ae279ee570c
Date: Sat, 5 Mar 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646465184
