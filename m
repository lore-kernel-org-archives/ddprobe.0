Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224641375
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ng78ZKN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8552FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702523896;
	bh=+rJMxYj+jujyGgCHqraz3o6NoKPCBdQz5u+25SsILxw=;
	h=To:Subject:From:Date:From;
	b=ng78ZKN3abuKOKPMwrBkH0TxU8eS85CckQw3lN6oW6iUops3lNB7qEcGV55izpJzJ
	 9rwMsIOxj/eqOF/pdJfRJfUrhu5OqV4APoh6uXAFGj2DnVvH78oNny3vGjO7K+jgMg
	 o5ZGDAslDOhJpuquKATgshkAnb8iH79VkPg838OC2LZ4T9xocA6CVf2X52eEc8khoW
	 gdPhBVXlriw5dY36C27qaPkX+/XbRMfwjtKBeDd6/aGMBqTMDbWipEMN+L/AAEks+z
	 wre5btFVBj1Si04TewHYC4GGjzvr+uqLl4VEO25SaVlf1Jhjobcb7/UINMe3YEXE+k
	 gF4B+DDeeDy8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E41C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170252389637.29128.13126743259853451647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8635b7b2e7ea92d332fbd840d8022c2c101afe6b2d0a1b8cf5362d8337d01c77
Date: Thu, 14 Dec 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702523896
