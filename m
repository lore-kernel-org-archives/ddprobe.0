Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DA21E481
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgM+nCSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F2E3C433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701185896;
	bh=vAm/8zJnpG5KChfelCRlOvHc1j3MDIWMe6AvOTYtGbc=;
	h=To:Subject:From:Date:From;
	b=jgM+nCSzLvD4lzE9BXv3dZVriUK5PkWoNXSwSEIdghU4XUzUAuep4cq4BVMs7zFdX
	 pRw6DKeW3KfucKrar8iT2k/SYcYKczSQOUV7hQ2Msl8uLqRCbedSav2buk5W7kYelx
	 WQEfbfL4vWBLr3prCAqrzwIsfz3/hrBE2Qaoqsdn4Z6cB3xotrs9dlZbpo3vzSFxYd
	 J27z+9LHqI3VWPe7GR48FaQ5kLEDbq9qg2No5zfkx47LUBjmpIPcQ9w3a59BOsURpb
	 KcUpy1UYgZkAcOH2Bc0J6v1cYL8/TF8OkCiML8LE9YnzJPBmDz7JWda6P0p9/lali0
	 TLeKtw8P7fglw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6280BC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170118589639.4793.8961421802086244381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6af9d9fd90073a4f8da04074bed3b6d317cafa1fbfd7439b8782ac9b8f9676
Date: Tue, 28 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701185896
