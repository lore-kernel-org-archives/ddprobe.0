Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A952C9D
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708CAC433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667401854;
	bh=IZ7ywdLIT9uOUc83Jr/LtMXm2wJf7xRTOB62FHq6Bk0=;
	h=To:Subject:From:Date:From;
	b=f0clzLc5zJQ0zpoHHq181P3WkSCZwauaBOLuW8G1Jm1YRvWzclKvtdfkOdhNBgDxn
	 /ddV7jR6k5d3kZLQIOoINAYtuO4hSMT6gbrtX1YZDS2+lh0iywbnmNcmqyk7o2uUqR
	 YsBg2iRiytkXPjTAGFoDJMj4lLLa6+2L++OQVJfWdmARizWBJ83r6Gq1hFT4tHTWMR
	 PjFMLaC0cvBOQL8zRoEsIujBAjVvcCUWU3663pIH4F5/23MVDDNaTHvC/xwg9uLOOy
	 bh8VTKnAdUXASMA+2yWjTamZO9pu1SLhnip+HdzbnV6FGsYCGpKHUUURYu9iEraxq2
	 yPqA8pjuY2Lyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D53C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166740185435.24130.13668186977777811171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326a4fd1d4e6234eb01acd608f08a6ad1c52ac0dcc0518cdbd9a278fb8daf0f4
Date: Wed, 02 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667401854
