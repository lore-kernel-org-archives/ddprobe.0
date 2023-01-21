Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5BC386
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D627EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674268925;
	bh=p+5PlHJNvuJHjfPpCtJArJ7A+sWsc+7xDw8V8cL3NfQ=;
	h=To:Subject:From:Date:From;
	b=DWvnyJp7mxX1HBpOUHNgQLi1S/EHz7Rmo7XRCTwh96BZLcJ45yvLId2RuowpvoVTc
	 tx23acHFVgjbs+wmucSHSC1KUITR8IAg+8btZXe7tuWPNQKSNmQCY0lT7ek1wapoGJ
	 4Bg4OD5LnepPqHApuUOwWty09YkxfDA4Sqn1FGxdYxB8PeBqx6qDdVyIiIH6O85J6J
	 rv+UVT3REw6G8LJHhauHe+gz8qiuzsSk/MVmC8ckiQOCwkNtRhVAXOXI4EasQ25LA2
	 7bAwxYy98iT7k+5ty8Bu5bELMduPZge5dKM8idrfA68BySQQMsastYwtsGVG98K9hv
	 4+jmBMIh7nT4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB029C05027
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426892575.19973.15215768065184964640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6231105ab442e7eaef48e6c32e98f7f57aabf4af2f989aa261957de80b16217d
Date: Sat, 21 Jan 2023 02:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674268925
