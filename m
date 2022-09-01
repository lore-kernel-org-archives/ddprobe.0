Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86E8746C
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF62C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662061853;
	bh=G+KH6uU+/5iZl1OJiETKMJiWKR7sC/l0ydNVscYfWMk=;
	h=To:Subject:From:Date:From;
	b=uEefBlK3+pr8rxAkMilmEjUKq7spHnWCplsG8ED2oq2TzxyP6af/j4UqqF1bVziWy
	 WREfHJfOBM/vm43OdZaw/vuHLLY3DF7JxAMfFEdmV76YQj0ZetNHs07UHZs+S/5ZU1
	 u2MNX98hZ7nOwmUUaJggu3o+zg9hVIMaY+b2TEMcduKIZig0kcw66QLDTeDsgqA/RP
	 GxTOpAoXM7plRnsDa/yE0T3Egyia1JAn6QxlIiKEkQtaC8AmExlb/jiZRDFSbG75cS
	 GYaJHJHuqsWQ5r+xLoU8pgFxyFT2Kxh5EXlgHqe0Y65wOfLzP2pZMUCWi6+bky1Pqh
	 h5bQp9mdl2FJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586F7ECAAD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166206185335.14840.11724655888170039910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20307b0d3fdf80d5ba8df07fb6260159b39667cb1e073fd5c07eaffda2c31057
Date: Thu, 01 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662061853
