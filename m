Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9710A460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E201C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670534487;
	bh=MVZOPI/q2xPOcQLNHVFCL+YxyMGEm3KVzLeUeF1BzPk=;
	h=To:Subject:From:Date:From;
	b=NF5edQXu/jNcBhBh352CIczsNunUgyLgysslM59MGHH5yMg/gR/8rWZ2otAtRWeLO
	 JQPb3YKDlW4lUqiswdEde0uMP/JR1fj7psBnEskHWh2HcH6c6AlJU1GwX1wsukiMQk
	 mD0JnSDQlyRiRg4fyygdNTZx7+WJSsgY0Gjs+OQX9U2Xg/7gP3JvBDwdncTS5LU9Pt
	 bbx4KYJzRm/bo8hnpiIH2N40WbfL79yy2b8b6Nk8Oyafy4cUYmYHm4dO0z9Xuq+UsG
	 igz51hAKSnoa74Bd3PS8jv0UsUA4vc3BWgVvOwyCYcf3p/Y37Cva8+/0Jc1dSSD9Gn
	 T8Ark2YcqNbow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601B0C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053448738.12232.5984089389214443830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4826a69af3b8f8405d950e4550d0360ae2d4ae85f82674bf5105469be6f780d1
Date: Thu, 08 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670534487
