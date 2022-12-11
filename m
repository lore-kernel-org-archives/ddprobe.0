Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF3C10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EF23C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670718687;
	bh=zicmkQ8ooNawX7tu0rGD5AGKoQjSM1H9A9VUwPs7RGs=;
	h=To:Subject:From:Date:From;
	b=oNLiIuKaaniipS9XnDhHJrtJZXsxjGO9x+9aaVMLWDjt0qp/xu1xeSFjERKZP8Nj1
	 qJVvD8KQ52LqN9+iI9hEbMZcT6gHmGZYVwSJPFgmnM2IuvW9xzDQEmc9EbhhRqGGoP
	 etK83cWUeaIEKhfweBoqg2Bqj8F9BOVozKf0oiPToxUAzMAvlxwhsbHcWh7MNI9/YG
	 FJFp+vo8iTUIHQXnLdq11yTd0loSmzWxnlVX1FhB1puJ6JH9HUyEFqp51j7VpchHBz
	 r+cx/SdqqZSPS3ODIEwoxXT28CTQ+orQztFr2b5kOTJ6pq1V/l0FlItQS5UnwmoTPB
	 YFfbfde1xAwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6905AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071868740.21084.7669074917285110536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76614c389407da9b939301e620eff0aa7260136ba74055e517b750ee69141da
Date: Sun, 11 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670718687
