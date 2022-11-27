Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EF317F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5BAC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669535454;
	bh=4kS8oOpO2lZ7C+vWq/+Wg2KELzAlk0MRklvY21fmwiI=;
	h=To:Subject:From:Date:From;
	b=AVQj9/Obf0dvt119FYOzM/3v6VmKHLbIMdA7o98lFbknlpGg7Ju1hfSKC52M2C1gO
	 MUpN9RyZL9MkCM/nlSECm/4w/EsfWyz2iOb6LTx46z4ndW1DXeo4YzKk2AMY9HshkW
	 NYvU+69Kia/xV6Ptmq+JYY0Aj9HcIR0hVcPCW6AVOQZ305rcCeGPCxlRIqoqPkvADr
	 EukhYJzFbQ9cXeJBdTkbc8BbezM+ONveLJ6StfLUJQ8d+OE/ZDTm+WGU3Has+aUaZ+
	 r8925eWKQnwIDZM+nZ5nup7BIzGwsYzOUmetMK0CtEjzaOY2RHAp21F6cLJYNwmk3Q
	 1jON+SaWeGQww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9E2C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953545436.9184.6660333361228991722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6c072514c4bc2e5e15d347b7800e57a22f102cb972e55f1a4a0272323962a6
Date: Sun, 27 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669535454
