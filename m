Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CD27F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F017C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662927053;
	bh=mVIML4DihRoUaf3lyiI0JtjARsZXRHc+IUBbtLjUpLg=;
	h=To:Subject:From:Date:From;
	b=KjVh38MKBBv78Cf9EY39qSeRPJtB1kq+MYIICdwef5/b1gcjZ567LN5u94Qp6QsOU
	 pQxt0JHqK9QZmKYZSfnUPPQaeGapOZDavi/pJnMl4eL6cAnARF8upomFI5Psc+NSao
	 rFeAkkHCAzcZ11q10fsNimSqXDiwIMOqJ7dCk07uy/ku4eA1oT5WE1aoKc+CSi+nKW
	 gqfkV+s2tmXXoUKcZPm5hJRTfP+kcO3FJ7ft17AJyIRy+bXV97yaGVuwdx86zXe7/S
	 RbM74kgUJ2Ff98r4Jg1/Akp3PhotazGXyZCMkaqgcpHDAT8zTRtKDbxS66+SRUnc5z
	 GBa56nH5VCABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535BDECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292705331.25283.13563466803930498898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf6687dba3f2cfdf7284b86d9b2cc1458049b4bb8dccb7487ac40d377b63930
Date: Sun, 11 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662927053
