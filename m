Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8266FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E51FC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669908054;
	bh=V6weQp7AlNZI71bWE2r5cels8YaZDEP8UCM5HJYwpck=;
	h=To:Subject:From:Date:From;
	b=GqNqpews/uD9bdKxe3ta7vXyp6lDmGA1HMNpClZp3BcQbSj4Elcu0vsWNCpKebIoK
	 0NsSDsRBVGanmc3pJZkMSfTYfiziNQFnPXLEQibiLNG4fxffsggtlUTU+sbvEABIjY
	 jUUXQ85wxZobbKojKsicTLj4LR3xR2Un5kJlVM83pD9Ghd5wsapYvmFLdlNL7V1U/v
	 7b7cLPoL8lfhCrwkJdvC527LgOiPjh8gKzhLT2SYVm+paVXQSRItAGMeTwFCsB0v4a
	 tVWi8pd2RjI2wGN+Xa6xcMldOXvXTayapja3WMaGsL8zTTM9qJc/7l1b2sckmITJHl
	 T7I5C7CeOdKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504FDC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990805432.29296.9878882387833772043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99e9d374587ef3225cb026e3fae20a88170d0c7a4d713f61df18805e941bef3
Date: Thu, 01 Dec 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669908054
