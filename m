Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC05D2F23
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82565C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668091854;
	bh=XOqWFvJdcrPExA/vIoIo4hRo4C3bztdBEz+wpkbais0=;
	h=To:Subject:From:Date:From;
	b=nIgzTNHzK3V9h1WyMgoZ2H84JOpAlqnwUY7BHsficNcpGtPsbKgbb2hgIFEw8Ar6/
	 /4DfCn23CHvNT91lRRUognMp2LcZDozvOLEoSzofVbhktSLppcm7z/EIvpwQPm1eYJ
	 qtJYsgaYUzsSB83j/qC+lwe4+Mc55fUJg4yTvUn7+WiJOpWhrVa2j1Qs1tvfDEReqy
	 uau3JBR1qZLBMZnKjY73j8HaTBhuXxVUH1aM43eYkeNPl/4IlNEmNHVsf5z9JqsFXn
	 ctrM2iLK8mjSl9YBcsmZGpk3xtIG4WVDe0mj5KLHe2xvW8tHBpsB/c/4E6c0GmWi4A
	 7f2Wb8d71RRGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682EDC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809185441.622.7371214462486517845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c316cc8c98e32dc9c38fd1f43a33fd190b587cedaf99a8a5bb7b4dcccbb914
Date: Thu, 10 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668091854
