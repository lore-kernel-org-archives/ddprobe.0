Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE9F29CA
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB9CC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667754654;
	bh=8quXJUw/Xw/VDON4OIC2W7FqGNETSAFRH6bklJIFJ0g=;
	h=To:Subject:From:Date:From;
	b=AnRg3oDwx8BVmPLngduRqHRrwmtmaFm58Va0qKp66KINIxTcw5P28ruvFf23UW5sH
	 8yUBtX5yILQa8WiMX28+ynzaKJWhZiryZxQ+uofYMJ76xjnAvcV8E4vidnpHhmrriE
	 qWQPg/IfIwy/zCNyxRlZPsev4+EOVZpI4rN5dgpNkJD/5Twi+lpTJxyMFVo4tvUmsb
	 CI8D4djRDwuq2bBBDPAIKI93NErBQL/kTneMc8asd3ROKrFQqp6MGig7uZxhR2JlLi
	 RGbIFIqintpNFCpso2sxbUYWHb0ZhP/7itNnK0/lLS7+0J7h91kJ5/LYUhq0nGXYkL
	 +yREla9GJ9MPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5036EC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166775465432.3904.12859601248726625354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66a84d12209b2fe4d97d1f106b108b56223cceaec7d7698518a50947778c7c9
Date: Sun, 06 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667754654
