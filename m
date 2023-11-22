Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179D85C8F8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg2n5OuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D5AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700680096;
	bh=zp8dOu2Q61NmRbo6oduExkj4jOAeNeRz41NNzDWeX0w=;
	h=To:Subject:From:Date:From;
	b=Wg2n5OuCR4abd/u1TeDUpmQE85/BK7RBEBaPHcM+nqRMNv7HPC9jddC8jVkqGsHK2
	 28VBwe227Sg5CExT4eqEc0HO89m/9FH/uP6I67t7GV7VjAr9H7uUD1SXXAJP5+jEUV
	 ToEz0iKFNbVOsxhZE2PsjPGOTQiyFbFPycdcoOPy67bnh/5KcMEs57cLb48bUyzNhp
	 t91bqPbmHiO0DK8GzRicFKutUs7rq0wbKnEF3OlroT47Qcgrjzh+Il/FJQmoIShisi
	 9K0iqMQdtzqBx/80kYEfBOfb4cNiwMBgC/f0bPTVYvXbgp5xGeZgZE/1ChKnB9xPBN
	 j/4RfTXpLOnCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 709FAC61D9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170068009645.11998.12736684157219320269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac63ae3f15700c69b6e7e14f973ed0ce6fd84f6e955e73badaf7f82186123962
Date: Wed, 22 Nov 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700680096
