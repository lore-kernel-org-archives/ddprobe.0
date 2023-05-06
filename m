Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F41C2566
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 18:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC616C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 18:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683399486;
	bh=u8uOEUsrp+70O6JAzQ2KlQkStvXxcVOz/12S3CnTHtw=;
	h=To:Subject:From:Date:From;
	b=fm7UEsZa5T5gOptRsnv9wqVIZsSTam8IFBDlwm5TdD+8I8hSl8IwVWNRX4qgqJVqG
	 Ggtr6Ca+Gkaxy5Y5lJZtU+tYngL/NJUPCZIGTFuPdkudjI0ST28344xqReXbCZFpIa
	 tsPmvwkGGFbewOeCTRHtWAtNPHG6OGogfU3YctkHekQCj9bZoL9n0De31bihEG1+0+
	 w0n6FNaAcQI8o6npyAmXXsA18Vfp/o/RUAZ3rV/1fFVCjtN3lVL3Vu8yjlomu0xHcN
	 Dxk96zkg8+HBh90ppYeme4jGCrICB8zYhCsz9KkrsvGgmZlV3ueqDxWJRRTOwq6Uvm
	 vix/ivfNq/QbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC953C77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 18:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168339948581.21851.14488691973346455845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66aeeffabe279b3e830e9d108788852620827490051da31d8a99151a1189f60f
Date: Sat, 06 May 2023 18:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683399485
