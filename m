Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D00A42
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68631C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669803054;
	bh=zwc1SxZzyR1cM1NtoWz/2dLugU2iIGRKXW2MIr9T1fA=;
	h=To:Subject:From:Date:From;
	b=N71ygWWJei+Qu+fbIhXk/R+m7vF4/lR3vkoWYBK1QUAZH4FCV/+1mEAyBTaJTaeMz
	 h4hGTSfvKhfESn+eGE6RjTsfbOUIQ4kwucoGz9XcA5h7OgFjXEq/I/ZkajPwGVIRVn
	 vtU6jxZeudbo6+Nr+fn9o/NRSfcK+XiYr46Fae6A/6rlspuUx5Ygb97a/meaLesR0b
	 ki5+uX3uxahAe/Cy/y75giWniTajyTEcthu7/HuAQI/FmrkzlkRKsjxe+aNDycME7V
	 m3JVasyABzTEyzYFwB4odn82w1XScetQ2flT/QmEHL3SEQswJ4bRbIu3lXvUlm2Oi7
	 i6nEfvhzVBSxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52428C352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980305432.31790.5318728927450019527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e344fb358549d7f71c04111fe2a6ebe1faf491de015fa5bafe8087c95d0cf61
Date: Wed, 30 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669803054
