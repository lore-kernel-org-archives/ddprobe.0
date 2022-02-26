Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928C63686
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645848985;
	h=To:Subject:From:Message-Id:Date;
	bh=Rufx4+PYoRY7nBE+FX5KB1vICHeXt2Ad+WoJyxXf1t0=;
	b=CAkyNrJZXqE4Xgj9E85GLu6YerMJw1VDC/9l9SJuAaTA0HM4L5UnvF2Mcm8oPgXT
	bYerK0imxOWtBRQDSgbyK9MYIN1b0zZpWe+EPGsoir+7OJHLaV8wh9ahrZBrI4ZuWkU
	kCAQRurfKejz2NtvbHWqa8/lsRXk0W8C9SRbgA+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645848985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rufx4+PYoRY7nBE+FX5KB1vICHeXt2Ad+WoJyxXf1t0=;
	b=U/Uiu6wsN7jvm6SaWaF0cqQ2C3tBvycHK3Z52ah7mrzoaQGMRauLtGvRQJzvUPrZ
	K18yryoCi1ik4K2di1asx9PAEMBIUmuTu0CLWlTSSFqzAQ5rrTKU+fZHKf0tEmWKFTa
	SMQ/pAUo/gO0aWx8T9JsBmMv0EgUrvXR/zTKf95o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f343e7d8a-a943df51-181d-4f55-867e-491d5dd23627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62df882e1b802db4b29fce290b235f83425adce3b13eea1681b547979f8b5524
Date: Sat, 26 Feb 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645848984
