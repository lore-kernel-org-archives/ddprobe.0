Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DA41C17
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697FEC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664584853;
	bh=odPRXB1ppYExDLlG+43weurPbS6tDtfPTXyeGbhYZsE=;
	h=To:Subject:From:Date:From;
	b=sXjTSJ9YoycCPJ6i2TA5AAEKdKS3AYa1dU/P5sC+6gL8MXQu8cOsiGs/NCxGq8T+t
	 uRZCl9rdRyga41YhQWUHv205lYIDExTPG5CHTHhmp+xcl52B8eW3F9Zvx8SWqVNP/T
	 ds0qqBmdCZAruKi+Tf8InrrGtd9ECiYrzSalM+C9z4vcsAs2KDDNs34ZdbqQCmz+SR
	 dUZz4b0wdhnTvUqapgceiBaGzhmgT17+l86LHqPVOZeQ7MEXx9vQCk0PbiKTH0KRr9
	 GgNVzsWIeSHgpIAKHQjymMySBAZpC8Gj9CiuNsWa3Mxgse/ZaxRQ+e+Upopmq7HHFM
	 ih6pCHbw2nBzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51997C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166458485332.23286.9476216381458758658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d623b1aae55c9d3f37437db7877d573e60c6e4701e220bc5e7b1987a6a8df8
Date: Sat, 01 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664584853
