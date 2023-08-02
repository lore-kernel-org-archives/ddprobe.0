Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDF47E
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 02:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45B4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690942328;
	bh=4S8S48GR4BQGRUx6HKijKAeLJkdvBZ2EgKrS882877Y=;
	h=To:Subject:From:Date:From;
	b=YtK7Voo/C13ytUgZK7caeV0P73NIE+zqTmSi46ZRPjXrTrDeeJKpp3P41gebBd5BN
	 bpEZY8J6Ntov+PyMChxhdQUKqVNx5iC4GAxan4QdfRXXmcBVN65BjuH0/DTEyuZfqV
	 ZQYEoXrEOpk8QQci0Thwtyi/1lIuDig/bFMU4D3h85v/uosXwqU1qkGZ+mTivY0lvM
	 HCFtHf9OFXM8OHV48jTOWQqysPux7vBp4zEkR9Pa3/4qSyHPq4QfQrm+vbVfC4VIrZ
	 HpzYOIC8wJLv6myjOZHfy682GOVwiqRuqKLdfWT5Ec/BcPOsx4cv7LAmd8m5RKegen
	 J0olqZ++bEFkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B7AC0015E
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169094232867.10458.5945163473923342655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42719df1bd0ded79dbe4d18b1d47a0615357b55b7c0acbcc584cce7aa2f43c06
Date: Wed, 02 Aug 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690942328
