Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0881190
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F9DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664015453;
	bh=JFjH8hIgqfbguaJavFoApn/rYAVysq1aeRjoCxuJv9Q=;
	h=To:Subject:From:Date:From;
	b=GtZ8VAwU3O9MGFW43gvnZwDVcKJ7N0ZyUU8NnsxaLSYenW0uTjA8DUTsnrJxdLgAL
	 oQvrUcPr4xLohZX716bDedVTZHfF//lUEJ1mSnDYqLtaau4AMkahGMV8f4dYYNH3Hq
	 BTKEP8Va/tvRDA5ru1BwTd/tBhvi5BWjoSM2SX53kb8Yz3YHDKwqif2mBUir9CF2Ui
	 Lo6FUm3pfKHcNfXz4xIOzT8m6qvrioZFvJazlClnPrfsIaEju5V6f9sA6YOtNwPw6s
	 lBncQjrXa4qOOKzb8+00rT0IR9WXsfbxUX5CyTbOXO/u71ezN0t18EolfNzQzbrA7T
	 Eu7OwBg1R19Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDB2C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401545331.27066.9179415858819978898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d7a4440f324c5f705b0ffde00a2b180f140c6d231e96e00589bebcad79dd6f
Date: Sat, 24 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664015453
