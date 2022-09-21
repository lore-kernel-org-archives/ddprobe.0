Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B908166E0
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D896C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663779653;
	bh=8v+4rGhnIDt9Eq3fWyb4T6H4JcJ1jgG+8kZKgQ3n2xk=;
	h=To:Subject:From:Date:From;
	b=ESizKduf+qtOLgquPf2uK1/zYrme3+a3ZKFF3d/Bu4QQSNsv367Dju1fCKhw5Fndp
	 D5eNOCZD8idbGgrBDcSkAZjfUhsM4cLu4k8kJk0+6fEpoUd2nOKx5BnkTJ+LZFTUgK
	 qhVdfPTNBT66dDp4ejjy0UDTe+rgrzQU4oLqVqTrQGX5a9NBGodUICwiIrBtwGw3CB
	 9QcFNHSkWPPaYVweQYiMjdWMEj17xsZRtL+UlBnI63jLUpOfdyt6bvF+Mw13x3fERT
	 mXVdEQ9Tqr6Ee9TfO5+A4esYE/czbVGeDvUoM3ZhGh392bulxWn8xM0reIWp6FJkeN
	 lkbr3q2L+QMEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50183ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377965331.20367.12314066952211140104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a399c913ac2adc2fe1d87159d4b6baa235f7b258987ef68a5c6c8006c9ec40
Date: Wed, 21 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663779653
