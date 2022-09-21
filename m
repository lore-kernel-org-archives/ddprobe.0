Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6661876
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E415C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663738853;
	bh=pyYIe1inUMjxorx4/rpfL9Y6E60zkUxlFqlE6Nnc7Y4=;
	h=To:Subject:From:Date:From;
	b=VWt1BDNzh/8Jdq495XdwrYvDf3tdNI5qqyZ+cPEtZ+em02jPnZPC6t2R8/TVhMw0r
	 PeEVAMWK03ZbKM50iHYHZAGENTJSP+LzGnDBujvCPvV1XZFaRJEc2LEdTueoidoLx7
	 Cu8VYpagkaLSJipacswv2EPw8sVvgd2E7LajIeTodnqSS9/q+TMOhxvC8Cw5iSI41j
	 uYi+JCR8bv8K+JScxJvxp/Yj5E1Ef0feEXf+8JT3Fn4QdDgQZ83ljitNnFZj9ipnio
	 Lh/hZ8xawWJ1pjMuwILNQwgO340431pPEKanJ68mgCLwA5uDjclm9ZFT8Vq0eEQYO0
	 wOWvWX6dK+bSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537AAECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373885333.2333.16642294243968212919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791f95e8ad87817d6dc1a9a801c5d228dd69f3842942319f2aa43a0c4e1334ea
Date: Wed, 21 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663738853
